import 'package:flutter/widgets.dart';
import 'package:megagame_client/data/input/input.dart';
import 'package:megagame_client/data/input/input_config.dart';
import 'package:megagame_client/data/server/server.dart';

class MainModel {

  Widget widget = const Text("Loading");

  final Server _server = Server();
  final Input _input = Input();

  MainModel(void Function() onUpdate) {
    _input.subscribe(InputConfig.current, _server.send);
    _server.receive((widget) {
      this.widget = widget;
      onUpdate();
    });
  }
}