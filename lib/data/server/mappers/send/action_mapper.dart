import 'package:megagame_client/data/input/models/action.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class ActionMapper extends SendMapper<Action> {

  @override
  dynamic map(Action value) => value.name;
}