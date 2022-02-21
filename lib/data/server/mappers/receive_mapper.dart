import 'package:flutter/material.dart';

abstract class ReceiveMapper<T> {

  bool isAcceptable(dynamic data);

  Widget map(dynamic data);
}