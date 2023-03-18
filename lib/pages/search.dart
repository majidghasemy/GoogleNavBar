import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../const.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: BackgroundColor,
      body: Center(
          child: Icon(
        IconlyLight.search,
        color: Color(0xff49FF00),
        size: 250,
      )),
    ));
  }
}
