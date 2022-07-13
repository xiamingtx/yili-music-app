import 'package:flutter/material.dart';
import 'package:yili_music_app/widget/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
        body: Header()
    );
  }
}
