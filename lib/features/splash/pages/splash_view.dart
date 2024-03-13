

import 'dart:async';

import 'package:flutter/material.dart';

import '../../login/pages/login_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "splash";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LoginView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Center(
        child: Text(
          "Fitting App",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
