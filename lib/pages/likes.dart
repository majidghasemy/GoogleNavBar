import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../const.dart';

class Heart extends StatelessWidget {
  const Heart({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: BackgroundColor,
      body: Center(
          child: Icon(
        IconlyLight.heart,
        color: Color(0xffFF1700),
        size: 250,
      )),
    ));
  }
}
