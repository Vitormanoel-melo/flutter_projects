// "startup" da aplicação android
import 'package:flutter/material.dart';
import 'package:vita_health/android/styles.dart';
import 'package:vita_health/android/views/home.view.dart';
import 'package:vita_health/android/views/splash.view.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: androidTheme(),
        // utilizar scaffold sempre que for uma página
        home: HomeView(key: key)
    );
  }
}
