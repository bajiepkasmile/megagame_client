import 'package:flutter/material.dart';
import 'package:megagame_client/data/server/mappers/receive_mapper.dart';
import 'package:megagame_client/data/server/models/player_widget.dart';

class PlayerMapper extends ReceiveMapper {

  @override
  bool isAcceptable(data) => data.toString().startsWith("Player");

  @override
  Widget map(dynamic data) {
    final parts = data.split(" ");
    final id = parts[1];
    var x = double.parse(parts[2]);
    var y = double.parse(parts[3]);


    if (x < 0) {
      x = 0;
    } else if (x > 800) {
      x = 800;
    }

    if (y < 0) {
      y = 0;
    } else if (y > 800) {
      y = 800;
    }

    return PlayerWidget(id, x, y);
  }
}