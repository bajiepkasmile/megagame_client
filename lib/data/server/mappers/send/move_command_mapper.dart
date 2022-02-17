import 'package:megagame_client/data/input/commands/move_command.dart';
import 'package:megagame_client/data/server/mappers/send/action_mapper.dart';
import 'package:megagame_client/data/server/mappers/send/direction_mapper.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class MoveCommandMapper extends SendMapper<MoveCommand> {

  final DirectionMapper _directionMapper;
  final ActionMapper _actionMapper;

  MoveCommandMapper(this._directionMapper, this._actionMapper);

  @override
  dynamic map(MoveCommand value) {
    final mappedDirection = _directionMapper.map(value.direction);
    final mappedAction = _actionMapper.map(value.action);
    return "Move $mappedDirection $mappedAction";
  }
}