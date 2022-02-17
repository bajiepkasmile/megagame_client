import 'package:megagame_client/data/input/commands/ability_command.dart';
import 'package:megagame_client/data/server/mappers/send/ability_mapper.dart';
import 'package:megagame_client/data/server/mappers/send_mapper.dart';

class AbilityCommandMapper extends SendMapper<AbilityCommand> {

  final AbilityMapper _abilityMapper;

  AbilityCommandMapper(this._abilityMapper);

  @override
  dynamic map(AbilityCommand value) =>
      "Ability ${_abilityMapper.map(value.ability)}";
}