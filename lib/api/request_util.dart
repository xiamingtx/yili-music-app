import 'dart:convert';

import 'package:http/http.dart' as http;

class RequestUtil {
  static RequestUtil? _instance;

  // 安卓虚拟机中127.0.0.1是虚拟机的本机地址 应该改成10.0.2.2 或者使用电脑IP地址进行请求
  // static const String baseUrl = 'http://127.0.0.1:8080';
  static const String baseUrl = 'http://10.0.2.2:8080';

  RequestUtil._internal() {
    _instance = this;
  }

  factory RequestUtil() => _instance ?? RequestUtil._internal();

  static Future<T> get<T>(String uri) async {
    final response = await http.get(Uri.parse(baseUrl + uri));
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      print(utf8.decode(response.bodyBytes));
      throw Exception("请求错误");
    }
  }
}