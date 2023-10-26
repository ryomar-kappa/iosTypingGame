import 'package:flutter/material.dart';
import 'package:takayama_test/ranking/ranking_data.dart';

class RankingView extends StatelessWidget {
  const RankingView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RankItem> rankList = List.generate(
      20,
      (index) => RankItem(
          rank: index + 1,
          name: 'Player ${index + 1}',
          score: (20 - index) * 100),
    );
    return Scaffold(
      body: ListView.builder(
        itemCount: rankList.length,
        itemBuilder: (context, index) {
          final item = rankList[index];
          Color? rankColor;
          IconData? rankIcon;

          switch (item.rank) {
            case 1:
              rankColor = Colors.amber;
              rankIcon = Icons.star;
              break;
            case 2:
              rankColor = Colors.grey[300];
              rankIcon = Icons.star_half;
              break;
            case 3:
              rankColor = Colors.brown[300];
              rankIcon = Icons.star_outline;
              break;
          }

          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white, // ウィジェットの背景色
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // 影の位置
                  ),
                ],
              ),
              child: ListTile(
                leading: rankIcon != null
                    ? Icon(rankIcon, color: rankColor)
                    : Text('${item.rank}位',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                title: Text(item.name, style: TextStyle(fontSize: 18)),
                trailing: Text('${item.score}点',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
          );
        },
      ),
    );
  }
}
