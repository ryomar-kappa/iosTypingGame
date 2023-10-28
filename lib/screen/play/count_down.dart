import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/screen/play/play_view.dart';
import 'package:takayama_test/screen/result/home/home_view.dart';

class CountDownView extends HookConsumerWidget {
  const CountDownView({super.key, required this.playType});
  final PlayType playType;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 1), () {
        navigatePlayView(ref, context);
      });
    });
    return const Scaffold(
        body: Center(
            child: Text(
      'スタート',
      style: TextStyle(fontSize: 42),
    )));
  }
}
