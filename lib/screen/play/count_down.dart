import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/screen/play/play_view.dart';
import 'package:takayama_test/screen/result/home/home_view.dart';

class CountDownView extends HookConsumerWidget {
  const CountDownView({super.key, required this.playType});
  final PlayType playType;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => navigatePlayView(ref, context),
      child: const Scaffold(
          body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('よみがなをひらがなでにゅうりょくしてね！'),
            SizedBox(
              height: 36,
            ),
            Center(
                child: Text(
              'タップしてスタート！',
              style: TextStyle(fontSize: 42),
            )),
          ],
        ),
      )),
    );
  }
}
