import 'package:megagame_client/data/input/models/direction.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class DirectionMapper extends SendMapper<Direction> {

  @override
  dynamic map(Direction value) => value.name;
}