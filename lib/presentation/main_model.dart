import 'package:flutter/widgets.dart';
import 'package:megagame_client/data/input/input.dart';
import 'package:megagame_client/data/input/input_config.dart';
import 'package:megagame_client/data/server/server.dart';

class MainModel {

  Widget worldWidget = const Text("Loading");

  final Server _server = Server();
  final Input _input = Input();

  MainModel(void Function() onUpdate) {
    _input.subscribe(InputConfig.keyboard, _server.send);
    _server.receive((worldWidget) {
      this.worldWidget = worldWidget;
      onUpdate();
    });
  }
}