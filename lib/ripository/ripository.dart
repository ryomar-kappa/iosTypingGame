import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/model/fish.dart';

final repositoryProvider = StateProvider((ref) => Ripository());

class Ripository {
  final db = FirebaseFirestore.instance;

  Future<List<Fish>> get() async {
    final snapShot = await db.collection('Fish').get();
    final hoge = snapShot.docs
        .map((document) => Fish.fromJson(document.data()))
        .toList();
    hoge.map((e) => debugPrint(e.yomigana));

    return hoge;
  }

  Future<void> register(Fish fish) async {
    final corectionReference = db.collection('Fish');
    corectionReference.add(fish.toJson());
    debugPrint('登録！');
  }
}
