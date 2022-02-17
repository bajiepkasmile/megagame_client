import 'package:megagame_client/data/input/models/ability.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class AbilityMapper extends SendMapper<Ability> {

  @override
  dynamic map(Ability value) => value.name;
}