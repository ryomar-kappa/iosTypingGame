import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/screen/play/play_provider.dart';
import 'package:takayama_test/screen/play/play_state.dart';
import 'package:takayama_test/screen/result/home/home_view.dart';

void navigatePlayView(WidgetRef ref, BuildContext context, PlayType playType) {
  ref.invalidate(playProvider);

  context.go('/play', extra: playType);
}

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
            _playTypeWidget(state, controller, notifier, context),
            Center(child: state.icon)
          ],
        )),
      ),
    );
  }

  Widget _playTypeWidget(PlayState state, TextEditingController controller,
      Play notifier, BuildContext context) {
    switch (playType) {
      case PlayType.onlyPaint:
        return _onlyPaint(state, controller, notifier, context);

      case PlayType.onlyKanji:
        return _onlyKanji(state, controller, notifier, context);

      case PlayType.all:
        return _all(state, controller, notifier, context);
    }
  }

  Widget _all(PlayState state, TextEditingController controller, Play notifier,
      BuildContext context) {
    return Column(
      children: [
        Center(child: Text(state.timerStr)),
        Center(child: Text(state.currectAnswerCountStr)),
        Center(
            child: Text(
          state.fishKanji,
          style: const TextStyle(fontSize: 100),
        )),
        SizedBox(height: 100, width: 100, child: Image.asset(state.svgPath)),
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
    );
  }

  Widget _onlyKanji(PlayState state, TextEditingController controller,
      Play notifier, BuildContext context) {
    return Column(
      children: [
        Center(child: Text(state.timerStr)),
        Center(child: Text(state.currectAnswerCountStr)),
        Center(
            child: Text(
          state.fishKanji,
          style: const TextStyle(fontSize: 100),
        )),
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
    );
  }

  Widget _onlyPaint(PlayState state, TextEditingController controller,
      Play notifier, BuildContext context) {
    return Column(
      children: [
        Center(child: Text(state.timerStr)),
        Center(child: Text(state.currectAnswerCountStr)),
        SizedBox(height: 100, width: 100, child: Image.asset(state.svgPath)),
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
    );
  }
}
