// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp2/auth/loginPage.dart';
import 'package:quizapp2/view/screens/dashboard.dart';
import 'package:quizapp2/view/screens/quiz/start_screen.dart';
import 'controller/index_controller.dart';
import 'view/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  final navigatorkey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //   //  ChangeNotifierProvider<IndexController>(
    //    //   create: (_) => IndexController(),
    //     ),
    //   ],
    //child:
    return GetMaterialApp(
      navigatorKey: navigatorkey,
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      // ),
    );
  }
}


// Within the SecondRoute widget