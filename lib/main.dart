import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/firebase_options.dart';
import 'package:takayama_test/model/fish.dart';
import 'package:takayama_test/ripository/ripository.dart';

import 'router/router.dart';

late List<Fish> fishList;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  fishList = await Ripository().get();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,
      title: 'フリック入力ゲーム',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        fontFamily: 'Aho',
        useMaterial3: true,
      ),
    );
  }
}
