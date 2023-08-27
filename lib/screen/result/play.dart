import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/questions/questions.dart';

class PlayView extends HookConsumerWidget {
  PlayView({Key? key}) : super(key: key);
  Timer? _timer;

  List<TextSpan> _highlightAnsweredCharacters(String word, String answer) {
    List<TextSpan> spans = [];
    for (int i = 0; i < word.length; i++) {
      bool isAnswered = i < answer.length && word[i] == answer[i];
      spans.add(
        TextSpan(
          text: word[i],
          style: TextStyle(
            fontSize: 24,
            color: isAnswered ? Colors.green : Colors.black,
          ),
        ),
      );
    }
    return spans;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answer = useState<String>('');
    final questionIndex = useState<int>(0);
    final controller = useTextEditingController();
    // タイマーの残り時間を追加 (例: 60秒)
    final remainingTime = useState<int>(30);
    final questions = ref.watch(questionsProvider);
    final score = useState<int>(0);
    final focusNode = useFocusNode();

    // タイマーを開始する useEffect
    useEffect(() {
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (remainingTime.value > 1) {
          remainingTime.value--;
        } else {
          timer.cancel();
          // context.goNamed('result');
        }
      });

      // クリーンアップ関数 (ウィジェットが破棄されるときにタイマーをキャンセル)
      return () {
        _timer?.cancel();
      };
    }, const []);

    controller.addListener(() {
      answer.value = controller.text;

      if (answer.value == questions[questionIndex.value].yomigana) {
        // 正解の場合、問題インデックスをインクリメント、最後の問題ならインクリメントせずに画面遷移
        {
          questionIndex.value++;
          controller.clear();
          score.value += 100;
        }
      }
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('フリック入力ゲーム'),
      ),
      body: GestureDetector(
        onTap: () => focusNode.requestFocus(),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'スコア: ${score.value}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // タイマーの残り時間を表示
                Text(
                  '残り時間: ${remainingTime.value}秒',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('第${questionIndex.value + 1}問'),
                const Text(
                  '問題文',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  questions[questionIndex.value].word,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: _highlightAnsweredCharacters(
                        questions[questionIndex.value].yomigana, answer.value),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  autofocus: true,
                  focusNode: focusNode,
                  controller: controller,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                Text('あなたの回答: ${answer.value}')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
