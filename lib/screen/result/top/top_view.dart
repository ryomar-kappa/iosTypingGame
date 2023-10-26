import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/screen/fish_regist_view.dart';
import 'package:takayama_test/screen/result/home/home_view.dart';
import 'package:takayama_test/screen/zukan/zukan_view.dart';

class TopView extends HookConsumerWidget {
  const TopView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = usePageController();
    final pageState = useState<int>(0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム画面'),
      ),
      body: SafeArea(
          child: PageView(
              controller: tabController,
              onPageChanged: (value) => pageState.value = value,
              children: const [HomeView(), ZukanView(), FishRegistView()])),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageState.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '図鑑',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: '登録',
          ),
        ],
        onTap: (index) {
          pageState.value = index;
          tabController.jumpToPage(index);
        },
      ),
    );
  }
}
