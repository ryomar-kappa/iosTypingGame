import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:takayama_test/screen/result/home.dart';
import 'package:takayama_test/screen/result/play.dart';
import 'package:takayama_test/screen/result/result.dart';

final goRouter = GoRouter(
  // アプリが起動した時
  initialLocation: '/',
  // パスと画面の組み合わせ
  routes: [
    GoRoute(
      path: '/',
      name: 'initial',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: HomeView(),
        );
      },
    ),
    GoRoute(
      path: '/play',
      name: 'play',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: PlayView(),
        );
      },
    ),
    GoRoute(
      path: '/result',
      name: 'result',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const ResultView(),
        );
      },
    ),
  ],
  // 遷移ページがないなどのエラーが発生した時に、このページに行く
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);
