import 'package:flutter/material.dart';
import 'package:megagame_client/data/server/mappers/receive_mapper.dart';
import 'package:megagame_client/data/server/models/projectile_widget.dart';

class ProjectileMapper extends ReceiveMapper {

  @override
  bool isAcceptable(data) => data.toString().startsWith("Projectile");

  @override
  Widget map(data) {
    final parts = data.split(" ");
    var x = double.parse(parts[1]);
    var y = double.parse(parts[2]);

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

    return ProjectileWidget(x, y);
  }
}