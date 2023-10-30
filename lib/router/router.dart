import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:takayama_test/screen/end/ernd_view.dart';
import 'package:takayama_test/screen/fish_regist_view.dart';
import 'package:takayama_test/screen/play/count_down.dart';
import 'package:takayama_test/screen/play/play_view.dart';
import 'package:takayama_test/screen/result/home/home_view.dart';
import 'package:takayama_test/screen/result/top/top_view.dart';
import 'package:takayama_test/screen/zukan/zukan_view.dart';

CustomTransitionPage<T> buildTransitionPage<T>({
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
    transitionDuration: const Duration(milliseconds: 0),
  );
}

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
          child: TopView(
            num: state.extra as int?,
          ),
        );
      },
    ),
    GoRoute(
      path: '/play',
      name: 'play',
      pageBuilder: (context, state) {
        return buildTransitionPage(
          child: PlayView(playType: state.extra as PlayType),
        );
      },
    ),
    GoRoute(
      path: '/countDown',
      name: 'countDown',
      pageBuilder: (context, state) {
        return buildTransitionPage(
          child: CountDownView(
            playType: state.extra as PlayType,
          ),
        );
      },
    ),
    GoRoute(
      path: '/result',
      name: 'result',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const FishRegistView(),
        );
      },
    ),
    GoRoute(
      path: '/zukan',
      name: 'zukan',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const ZukanView(),
        );
      },
    ),
    GoRoute(
      path: '/end',
      name: 'end',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: EndView(
            playType: state.extra as PlayType,
          ),
        );
      },
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const FishRegistView(),
        );
      },
    )
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
