import 'dart:math';

import 'package:flutter/material.dart';
import 'package:megagame_client/presentation/main_model.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MainWidget extends StatefulWidget {

  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {

  final widgets = <Widget>[Text("start")];

  // late final MainModel _model;
  //
  // _MainWidgetState() {
  //   _model = MainModel(() => setState(() {}));
  // }
  //
  // @override
  // Widget build(BuildContext context) => MaterialApp(home: _model.widget);


  @override
  Widget build(BuildContext context) => MaterialApp(home: ListView(children: widgets));

  _MainWidgetState() {
    final id = Random().nextInt(1000000);
    widgets.add(Text("id = $id"));
    final _channel =
        WebSocketChannel.connect(Uri.parse("ws://87.247.157.178:8001/ws/$id"));
    widgets.add(Text("connect called"));

    _channel.stream.listen(
          (data) { widgets.add(Text("onData: $data")); setState(() {});},
          onError: (error) { widgets.add(Text("onError: ${error.message} ||| ${error.inner}")); setState(() {}); },
          onDone: () { widgets.add(Text("onDone")); setState(() {}); },
    );
    widgets.add(Text("4"));
  }
}