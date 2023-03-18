import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: BackgroundColor,
      body: Center(
          child: Icon(
        IconlyLight.home,
        color: Color(0xffFFE400),
        size: 250,
      )),
    ));
  }
}
