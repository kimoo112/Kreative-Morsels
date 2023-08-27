// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login.dart';
import 'package:flutter_application_1/Screens/signin.dart';
import 'package:flutter_application_1/Screens/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'TheBase.dart';
import 'Screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              fontFamily: 'Montserrat',
            ),
            debugShowCheckedModeBanner: false,
            home: SplashScreen(duration: 5, nextScreen: TheBase(), seconds: 5,),
          );
        });
  }
}
