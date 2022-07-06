import 'package:http/http.dart' as http;

const String baseUrl = 'https://yili-music-2066870-1312790450.ap-shanghai.run.tcloudbase.com';

Future<String> sayHello() async {
  final response = await http
      .get(Uri.parse('$baseUrl/hello'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return response.body;
  } else {
    throw Exception('请求错误');
  }
}

