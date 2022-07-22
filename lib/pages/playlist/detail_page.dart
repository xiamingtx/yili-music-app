import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yili_music_app/theme.dart';
import 'package:yili_music_app/widgets/music_list.dart';
import '../../api/playlist.dart';
import '../../model/playlist.dart';

import 'Header.dart';

class PlaylistDetailPage extends StatefulWidget {
  const PlaylistDetailPage({super.key});

  @override
  State createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends State<PlaylistDetailPage> {
  late Future<Playlist> futurePlaylist;

  @override
  void initState() {
    super.initState();
    futurePlaylist = detail("1");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FutureBuilder<Playlist>(
      future: futurePlaylist,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Playlist playlist = snapshot.data!;

          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(children: <Widget>[
              SizedBox(
                width: 375,
                height: 235,
                child:
                    SvgPicture.asset('assets/images/playlist-back-image.svg'),
              ),
              Column(
                children: <Widget>[
                  Header(name: playlist.name, description: playlist.description,),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const PrimaryButton(
                        width: 221,
                        child: Text('播放'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PrimaryButton(
                          color: btnSecondaryColor,
                          child: SvgPicture.asset('assets/icons/download.svg'))
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  MusicList(
                    musicList: playlist.musicList,
                  )
                ],
              )
            ]),
          );
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: CircularProgressIndicator(),
            )
          ],
        );
      },
    ));
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key, required this.child, this.width = 44, this.color = primary})
      : super(key: key);

  final Widget child;

  final double width;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          fixedSize: MaterialStateProperty.all<Size>(Size(width, 44)),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10)))),
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        ),
        child: child);
  }
}
