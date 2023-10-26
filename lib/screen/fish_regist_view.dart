import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/model/fish.dart';
import 'package:takayama_test/ripository/ripository.dart';

class FishRegistView extends HookConsumerWidget {
  const FishRegistView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state =
        useState(const Fish(kanji: '', path: '', yomigana: '', answerCount: 0));

    return SafeArea(
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              state.value = state.value.copyWith(kanji: value);
            },
          ),
          TextField(
            onChanged: (value) {
              state.value = state.value.copyWith(path: value);
            },
          ),
          TextField(
            onChanged: (value) {
              state.value = state.value.copyWith(yomigana: value);
            },
          ),
          TextField(
            onChanged: (value) {
              final intValue = int.tryParse(value);
              if (intValue != null) {
                state.value = state.value.copyWith(answerCount: intValue);
              }
            },
          ),
          Center(
            child: FilledButton(
              child: Text('登録'),
              onPressed: () {
                ref.read(repositoryProvider).register(state.value);
              },
            ),
          )
        ],
      ),
    );
  }
}
