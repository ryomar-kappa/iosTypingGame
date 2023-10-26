import 'package:flutter/material.dart';
import 'package:takayama_test/main.dart';

class ZukanView extends StatelessWidget {
  const ZukanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            itemCount: fishList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 2.0,
            ),
            itemBuilder: (_, index) => SizedBox(
                  height: 100,
                  width: 100,
                  child: Column(children: [
                    Text(fishList[index].kanji),
                    Text(fishList[index].yomigana),
                    SizedBox(
                        height: 50, child: Image.asset(fishList[index].path))
                  ]),
                )),
      ),
    );
  }
}
