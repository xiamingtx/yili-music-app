import 'package:flutter/material.dart';
import 'package:yili_music_app/theme.dart';

class MusicianCard extends StatelessWidget {
  const MusicianCard(
      {super.key,
      required this.name,
      required this.photo,
      required this.category});

  final String name, photo, category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(120))
            ),
            child: Image.asset(photo)
          ),
          Text(
            name,
            style: primaryText
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            category,
            style: secondaryText
          )
        ],
      ),
    );
  }
}
