import 'package:flutter/material.dart';

class PlayerWidget extends StatelessWidget {

  final String _id;
  final double _x;
  final double _y;

  const PlayerWidget(this._id, this._x, this._y, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Container(
        width: 80,
        height: 80,
        margin: EdgeInsets.only(left: _x, top: _y),
        decoration: const BoxDecoration(
          color: Color(0xFF000000),
          shape: BoxShape.circle,
        ),
      );
}