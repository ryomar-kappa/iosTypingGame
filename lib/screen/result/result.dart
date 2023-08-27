import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultView extends StatelessWidget {
  const ResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 中央に配置
            crossAxisAlignment: CrossAxisAlignment.stretch, // 横幅いっぱいに伸ばす
            children: [
              // 結果のテキスト
              Text(
                'test',
                textAlign: TextAlign.center, // 中央寄せ
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 20), // 余白を追加
              // もう一度遊ぶボタン
              FilledButton(
                onPressed: () {
                  context.goNamed('play'); // 1つ前の画面に戻る
                },
                child: Text('もう一度遊ぶ'),
                style: FilledButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0), // ボタンのパディング
                ),
              ),
              FilledButton(
                onPressed: () {
                  context.goNamed('initial'); // 1つ前の画面に戻る
                },
                child: Text('ホームに戻る'),
                style: FilledButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0), // ボタンのパディング
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
