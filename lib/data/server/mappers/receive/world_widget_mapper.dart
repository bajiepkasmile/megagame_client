import 'package:megagame_client/data/server/mappers/receive/player_widget_mapper.dart';
import 'package:megagame_client/data/server/mappers/receive_mapper.dart';
import 'package:megagame_client/data/server/models/world_widget.dart';

class WorldWidgetMapper extends ReceiveMapper<WorldWidget> {

  final PlayerWidgetMapper _playerWidgetMapper;

  WorldWidgetMapper(this._playerWidgetMapper);

  @override
  WorldWidget map(dynamic data) =>
      data
          .split("\n")
          .where((value) => value.isNotEmpty)
          .map(_playerWidgetMapper.map)
          .toList();
}