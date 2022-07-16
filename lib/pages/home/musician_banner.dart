import 'package:flutter/material.dart';
import 'package:yili_music_app/pages/home/musician_card.dart';
import 'package:yili_music_app/theme.dart';

class MusicianBanner extends StatelessWidget {
  const MusicianBanner({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          margin: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: <Widget>[
              Text(title,
                  style:
                      const TextStyle(fontSize: 22, color: Color(0xFF002150))),
              const Spacer(),
              const Text(
                "更多",
                style: TextStyle(fontSize: 14, color: primary),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: const <Widget>[
              MusicianCard(
                  name: "蕾哈娜",
                  photo: "assets/images/musician-photo.png",
                  category: "流行音乐"),
              MusicianCard(
                  name: "蕾哈娜",
                  photo: "assets/images/musician-photo.png",
                  category: "流行音乐"),
              MusicianCard(
                  name: "蕾哈娜",
                  photo: "assets/images/musician-photo.png",
                  category: "流行音乐"),
              MusicianCard(
                  name: "蕾哈娜",
                  photo: "assets/images/musician-photo.png",
                  category: "流行音乐"),
              MusicianCard(
                  name: "蕾哈娜",
                  photo: "assets/images/musician-photo.png",
                  category: "流行音乐")
            ],
          ),
        )
      ],
    );
  }
}
