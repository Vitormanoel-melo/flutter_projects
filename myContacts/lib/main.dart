// biblioteca trabalhar layouts com ANDROID
import 'package:flutter/material.dart';
// biblioteca trabalhar layouts com IOS
import 'package:flutter/cupertino.dart';
// biblioteca trabalhar layouts com os dois (Android e IOS)
import 'package:flutter/widgets.dart';
import 'package:vita_health/android/android.app.dart';
import 'dart:io';

void main() {
  if (Platform.isIOS) {
    // roda o app do ios
  } else {
    runApp(const AndroidApp());
  }
}
