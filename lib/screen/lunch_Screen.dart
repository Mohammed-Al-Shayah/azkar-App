import 'package:flutter/material.dart';

class LunchScreen extends StatefulWidget {
  @override
  _LunchScreenState createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
    @override
   void initState() {
   super.initState();
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, "/azkar_Screen");
      });
    }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Text(
          "AzkarApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),

      ),
    );
  }
}
