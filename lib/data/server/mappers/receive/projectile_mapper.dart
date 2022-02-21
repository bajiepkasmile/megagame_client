import 'package:flutter/material.dart';
import 'package:megagame_client/data/server/mappers/receive_mapper.dart';
import 'package:megagame_client/data/server/models/projectile_widget.dart';

class ProjectileMapper extends ReceiveMapper {

  @override
  bool isAcceptable(data) => data.toString().startsWith("Projectile");

  @override
  Widget map(data) {
    final parts = data.split(" ");
    final x = double.parse(parts[1]);
    final y = double.parse(parts[2]);
    return ProjectileWidget(x, y);
  }
}