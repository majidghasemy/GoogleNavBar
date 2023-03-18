import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../const.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: BackgroundColor,
      body: Center(
          child: Icon(
        IconlyLight.profile,
        color: Color(0xffFF8E00),
        size: 250,
      )),
    ));
  }
}
