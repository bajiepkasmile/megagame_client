import 'package:flutter/material.dart';

class ProjectileWidget extends StatelessWidget {

  final double _x;
  final double _y;

  const ProjectileWidget(this._x, this._y, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Container(
        width: 20,
        height: 20,
        margin: EdgeInsets.only(left: _x, top: _y),
        decoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
      );
}