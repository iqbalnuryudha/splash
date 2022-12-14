import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/home/home_view.dart';
import 'package:login/login_view.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({ Key? key }) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var durasiSplash = const Duration(seconds: 2);
    return Timer(durasiSplash, () {
      //pindah ke halaman login
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            //return HomePage();
            return LoginPage();
          })
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/loading.gif",
          width: 500,
          height: 300,
        ),
      ),
    );
  }
}