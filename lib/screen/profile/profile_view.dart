import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:takayama_test/screen/profile/user_profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final UserProfile profile =
        UserProfile(name: 'Takayama', ranking: 5, highScore: 1234);
    final List<double> pastScores = [1000, 1100, 950, 1234, 1150];
    return Scaffold(
      appBar: AppBar(title: Text('プロフィール')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              //画像のパスをここに指定
              // backgroundImage: AssetImage('path_to_your_image'),
              backgroundColor: Colors.grey[200],
            ),
            SizedBox(height: 16),
            Text(profile.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 24),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.leaderboard, color: Colors.blue),
                        SizedBox(width: 10),
                        Text('ランキング',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('${profile.ranking}位', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 10),
                        Text('最高スコア',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('${profile.highScore}点',
                        style: TextStyle(fontSize: 20)),
                    Text("過去のスコア",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    Container(
                      height: 180,
                      child: LineChart(
                        LineChartData(
                          gridData: FlGridData(show: false),
                          titlesData: FlTitlesData(show: false),
                          borderData: FlBorderData(
                            show: true,
                            border: Border.all(
                                color: const Color(0xff37434d), width: 1),
                          ),
                          minX: 0,
                          maxX: pastScores.length.toDouble() -
                              1, // データ数に応じたX軸の最大値
                          minY: 0,
                          maxY: (pastScores.reduce(
                                  (curr, next) => curr > next ? curr : next) *
                              1.2), // 最大スコアの1.2倍をY軸の最大値とする
                          lineBarsData: [
                            LineChartBarData(
                              spots: pastScores
                                  .asMap()
                                  .entries
                                  .map((e) => FlSpot(e.key.toDouble(), e.value))
                                  .toList(),
                              isCurved: true,
                              color: Colors.blue,
                              barWidth: 4,
                              isStrokeCapRound: true,
                              belowBarData: BarAreaData(show: false),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
