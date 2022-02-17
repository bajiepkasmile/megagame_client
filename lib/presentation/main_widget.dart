import 'package:flutter/material.dart';
import 'package:megagame_client/presentation/main_model.dart';

class MainWidget extends StatefulWidget {

  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {

  late final MainModel _model;

  _MainWidgetState() {
    _model = MainModel(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) => MaterialApp(home: _model.worldWidget);
}