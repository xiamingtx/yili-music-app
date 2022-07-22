
import 'package:yili_music_app/api/request_util.dart';
import '../model/playlist.dart';

const String prefix = '/playlists/';

Future<Playlist> detail(id) async {
  final data = await RequestUtil.get(prefix + id);
  print(123);
  print(data);
  return Playlist.fromJson(data);
}