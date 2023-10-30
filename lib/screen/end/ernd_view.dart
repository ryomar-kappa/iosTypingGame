import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/screen/result/home/home_view.dart';
import 'package:takayama_test/screen/zukan/zukan_view.dart';

class EndView extends ConsumerWidget {
  const EndView({super.key, required this.playType});

  final PlayType playType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                  onPressed: () => context.push('/countDown', extra: playType),
                  child: const Text('もう一度')),
              FilledButton(
                  onPressed: () => navigateZukanView(context),
                  child: const Text('お魚図鑑へ')),
              FilledButton(
                  onPressed: () => context.push('/'),
                  child: const Text('ホームに戻る')),
            ],
          ),
        ),
      ),
    );
  }
}
