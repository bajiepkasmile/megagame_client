import 'dart:convert';
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

  final widgets = <Widget>[];

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
    widgets.add(Text("start"));
    final id = Random().nextInt(1000000);
    widgets.add(Text("id = $id"));
    final _channel =
        WebSocketChannel.connect(Uri.parse("ws://87.247.157.178:8001/ws/$id"));
        // WebSocketChannel.connect(Uri.parse("ws://ws-feed.pro.coinbase.com"));

    widgets.add(Text("WebSocketChannel.connect"));

    _channel.stream.listen(
          (data) { widgets.add(Text("onData: $data")); setState(() {});},
          onError: (error) { widgets.add(Text("onError: ${error.message} ||| ${error.inner}")); setState(() {}); },
          onDone: () { widgets.add(Text("onDone")); setState(() {}); },
    );

    // _channel.sink.add(
    //   jsonEncode(
    //     {
    //       "type": "subscribe",
    //       "channels": [
    //         {
    //           "name": "ticker",
    //           "product_ids": [
    //             "BTC-EUR",
    //           ]
    //         }
    //       ]
    //     },
    //   ),
    // );

    widgets.add(Text("end"));
  }
}