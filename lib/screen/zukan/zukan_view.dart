import 'package:flutter/material.dart';
import 'package:takayama_test/main.dart';
import 'package:takayama_test/model/fish.dart';

class ZukanView extends StatelessWidget {
  const ZukanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            itemCount: globalFishList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 2.0,
            ),
            itemBuilder: (_, index) => GestureDetector(
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) =>
                          OsakanaSyousai(fish: globalFishList[index])),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Column(children: [
                      Text(globalFishList[index].kanji),
                      Text(globalFishList[index].yomigana),
                      SizedBox(
                          height: 50,
                          child: Image.asset(globalFishList[index].path))
                    ]),
                  ),
                )),
      ),
    );
  }
}

class OsakanaSyousai extends StatelessWidget {
  const OsakanaSyousai({super.key, required this.fish});

  final Fish fish;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(children: [
      Image.asset(fish.path),
      const Text(
        'とても美味しい',
        style: TextStyle(fontSize: 24),
      )
    ]);
  }
}
