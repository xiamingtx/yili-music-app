import 'package:flutter/material.dart';

import 'music_card.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: const <Widget>[
          MusicCard(
              cover: "assets/images/musician-photo.png",
              name: "夜曲",
              album: "十一月的肖邦",
              artist: "周杰伦"),
          MusicCard(
              cover: "assets/images/musician-photo.png",
              name: "夜曲",
              album: "十一月的肖邦",
              artist: "周杰伦"),
          MusicCard(
              cover: "assets/images/musician-photo.png",
              name: "夜曲",
              album: "十一月的肖邦",
              artist: "周杰伦"),
          MusicCard(
              cover: "assets/images/musician-photo.png",
              name: "夜曲",
              album: "十一月的肖邦",
              artist: "周杰伦"),
          MusicCard(
              cover: "assets/images/musician-photo.png",
              name: "夜曲",
              album: "十一月的肖邦",
              artist: "周杰伦"),
        ],
      ),
    );
  }
}
