import 'package:flutter/material.dart';
import 'package:session/functions.dart';
import 'package:session/home2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
        onTap: () {
          navigateTo(context, Home2());
        },
        child: Image.asset(
          'assets/images/dumbbell.png',
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
