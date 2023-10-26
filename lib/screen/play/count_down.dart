import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:takayama_test/screen/result/home/home_view.dart';

class CountDownView extends HookWidget {
  const CountDownView({super.key, required this.playType});
  final PlayType playType;
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(Duration(seconds: 1), () {
        context.go('/play', extra: playType);
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
