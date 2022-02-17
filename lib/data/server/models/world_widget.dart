import 'package:flutter/material.dart';

class WorldWidget extends StatelessWidget {

  final List<Widget> _widgets;

  const WorldWidget(this._widgets, {Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) => Stack(children: _widgets);
}