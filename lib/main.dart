import 'package:flutter/material.dart';
import 'package:yili_music_app/api/hello.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '依力音乐盒'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String message = '依力音乐盒';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _fetchData() {
    sayHello().then((value) => {
      setState(() {
        message = value;
      })
    });
  }

  final ButtonStyle buttonStyle =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message, style: Theme.of(context).textTheme.headline5),
            ElevatedButton(
              style: buttonStyle,
              onPressed: _fetchData,
              child: const Text('请求数据'),
            ),
            const SizedBox(height: 30),
            const Text(
              '您的点击次数为: ',
            ),
            Text(
              '$_counter', // dart语言的语法 可以强制转换成字符串
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
