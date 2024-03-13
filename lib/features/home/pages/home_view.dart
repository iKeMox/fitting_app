import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,


        child: Column(
        children: [
          Text("Welcome Back!", style: theme.textTheme.titleLarge,),
        ],  
        ),
      ),
    );
  }
}
