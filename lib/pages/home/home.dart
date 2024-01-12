import 'package:flutter/material.dart';
import 'package:modern_home/common/widgets/indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Column(children: [
        Text(
          'Monday',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.24,
          ),
        ),
        IndicatorWidgets()
      ]),
    ));
  }
}
