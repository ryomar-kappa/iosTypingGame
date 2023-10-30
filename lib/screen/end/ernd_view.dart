import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:takayama_test/screen/zukan/zukan_view.dart';

class EndView extends StatelessWidget {
  const EndView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                  onPressed: () => context.push('/'),
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
