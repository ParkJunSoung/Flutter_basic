import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = [
    'dog',
    'cat',
    'person',
    'back',
    'room',
  ];
  final List<String> filteredItems = [];
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello world'),
      ),
      body: Column(
        children: [
          TextField(
              controller: _controller,
              onChanged: (text) {
                setState(() {
                  filteredItems.clear();
                  for (String item in items) {
                    if (item.contains(text)) {
                      filteredItems.add(item);
                    }
                  }
                });
              }),
          ListView(shrinkWrap: true, children: _buildItem())
        ],
      ),
    );
  }

  List<ListTile> _buildItem() {
    if (_controller.text.isEmpty) {
      return items.map((e) => ListTile(title: Text(e))).toList();
    }
    return filteredItems.map((e) => ListTile(title: Text(e))).toList();
  }
}
