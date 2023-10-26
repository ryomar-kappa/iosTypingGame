import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/screen/play/play_provider.dart';
import 'package:takayama_test/screen/play/play_state.dart';
import 'package:takayama_test/screen/result/home/home_view.dart';

class PlayView extends HookConsumerWidget {
  const PlayView({super.key, required this.playType});

  final PlayType playType;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    final state = ref.watch(playProvider);
    final notifier = ref.watch(playProvider.notifier);

    return Theme(
      data: ThemeData(fontFamily: 'Aho'),
      child: Scaffold(
        body: SafeArea(
            child: Stack(
          children: [
            Column(
              children: [
                Center(child: Text(state.timerStr)),
                Center(child: Text(state.currectAnswerCountStr)),
                Center(
                    child: Text(
                  state.fishKanji,
                  style: const TextStyle(fontSize: 100),
                )),
                SizedBox(
                    height: 100, width: 100, child: Image.asset(state.svgPath)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    controller: controller,
                    onEditingComplete: () {
                      notifier.onPressedDone(controller.text, context);
                      controller.clear();
                    },
                    autofocus: true,
                  ),
                )
              ],
            ),
            Center(child: state.icon)
          ],
        )),
      ),
    );
  }
}
