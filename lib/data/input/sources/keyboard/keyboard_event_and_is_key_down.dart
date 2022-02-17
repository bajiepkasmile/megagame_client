import 'dart:html' as html;

class KeyboardEventAndIsKeyDown {

  final html.KeyboardEvent htmlKeyboardEvent;
  final bool isKeyDown;

  KeyboardEventAndIsKeyDown(this.htmlKeyboardEvent, this.isKeyDown);
}