import 'package:flutter/widgets.dart';
import 'package:megagame_client/data/server/mappers/receive/player_mapper.dart';
import 'package:megagame_client/data/server/mappers/receive/projectile_mapper.dart';

class WorldMapper {

  final _mappers = [
    ProjectileMapper(),
    PlayerMapper(),
  ];

  Widget map(dynamic data) {
    final widgets = <Widget>[];
    data.toString()
        .split('\n')
        .map(mapOrNull)
        .forEach((widget) {
          if (widget != null) {
            widgets.add(widget);
          }
        });
    return Stack(children: widgets);
  }

  Widget? mapOrNull(dynamic data) {
    for (final mapper in _mappers) {
      if (mapper.isAcceptable(data)) {
        return mapper.map(data);
      }
    }
  }
}