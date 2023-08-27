import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

class HomeView extends HookWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SimpleAnimation('');
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム画面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 400,
                    width: 500,
                    child: InkWell(
                      child: RiveAnimation.asset(
                        '/Users/takayamaryouma/Project/takayama_test/lib/assets/workWoman.riv',
                        controllers: [controller],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.goNamed('play');
                      },
                      child: Text('プレイ'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.login),
          label: 'ログイン',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.leaderboard),
          label: 'ランキング',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: '戦績',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            // "ログイン"ボタンの処理をここに書く
            break;
          case 1:
            // "ランキング"ボタンの処理をここに書く
            break;
          case 2:
            // "戦績"ボタンの処理をここに書く
            break;
        }
      },
    );
  }
}
