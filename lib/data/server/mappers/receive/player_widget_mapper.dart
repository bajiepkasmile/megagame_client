import 'package:megagame_client/data/server/mappers/receive_mapper.dart';
import 'package:megagame_client/data/server/models/player_widget.dart';

class PlayerWidgetMapper extends ReceiveMapper<PlayerWidget> {

  @override
  PlayerWidget map(dynamic data) {
    final parts = data.split(" ");
    final x = double.parse(parts[0]);
    final y = double.parse(parts[1]);
    return PlayerWidget(x, y);
  }
}