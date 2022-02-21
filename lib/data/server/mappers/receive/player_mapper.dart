import 'package:flutter/material.dart';
import 'package:megagame_client/data/server/mappers/receive_mapper.dart';
import 'package:megagame_client/data/server/models/player_widget.dart';

class PlayerMapper extends ReceiveMapper {

  @override
  bool isAcceptable(data) => data.toString().startsWith("Player");

  @override
  Widget map(dynamic data) {
    final parts = data.split(" ");
    final x = double.parse(parts[1]);
    final y = double.parse(parts[2]);
    return PlayerWidget(x, y);
  }
}