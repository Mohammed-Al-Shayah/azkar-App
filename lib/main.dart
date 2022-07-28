import 'package:azkar_app/screen/about_Screen.dart';
import 'package:azkar_app/screen/azkar_Screen.dart';
import 'package:azkar_app/screen/lunch_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates:[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ] ,
      supportedLocales: [Locale('ar')],
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      initialRoute: "/lunch_Screen",

      routes: {
        "/lunch_Screen": (context) => LunchScreen(),
        "/azkar_Screen": (context) => AzkarScreen(),
        "/about_Screen": (context) => AboutScreen(),

      },
    );
  }
}
