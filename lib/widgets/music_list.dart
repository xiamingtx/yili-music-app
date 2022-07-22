import 'package:flutter/material.dart';

import '../model/music.dart';
import 'music_card.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key, this.musicList = const <Music>[]});

  final List<Music> musicList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: musicList
            .map((item) => MusicCard(
            cover: "assets/images/musician-photo.png",
            name: item.name,
            album: "十一月的肖邦",
            artist: "周杰伦")).toList()
      ),
    );
  }
}
