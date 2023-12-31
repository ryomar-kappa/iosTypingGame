import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum PlayType { onlyPaint, onlyKanji, all }

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 80,
          ),
          const Center(
              child: Text(
            'お魚読めるかな',
            style: TextStyle(fontSize: 36),
          )),
          const SizedBox(
            height: 80,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 10.0),
                  child: _button(context, '絵だけ', PlayType.onlyPaint),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 10.0),
                  child: _button(context, '漢字だけ', PlayType.onlyKanji),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 10.0),
                  child: _button(context, 'どっちも', PlayType.all),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _button(BuildContext context, String title, PlayType playType) {
    return ElevatedButton(
        onPressed: () {
          context.push('/countDown', extra: playType);
        },
        style: ElevatedButton.styleFrom(
            elevation: 5,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
        child: Text(title, style: const TextStyle(fontSize: 20)));
  }
}
