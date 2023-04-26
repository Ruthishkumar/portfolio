import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputsWidget extends StatelessWidget {
  final TextEditingController chatTextFieldController = TextEditingController();
  late final _focusNode = FocusNode(
    onKey: _handleKeyPress,
  );

  KeyEventResult _handleKeyPress(FocusNode focusNode, RawKeyEvent event) {
    // handles submit on enter
    if (event.isKeyPressed(LogicalKeyboardKey.enter) && !event.isShiftPressed) {
      _sendMessage();
      // handled means that the event will not propagate
      return KeyEventResult.handled;
    }
    // ignore every other keyboard event including SHIFT+ENTER
    return KeyEventResult.ignored;
  }

  void _sendMessage() {
    if (chatTextFieldController.text.trim().isNotEmpty) {
      // Do something with your input text
      print(chatTextFieldController.text.trim());

      // bring focus back to the input field
      Future.delayed(Duration.zero, () {
        _focusNode.requestFocus();
        chatTextFieldController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          keyboardType: TextInputType.multiline,
          maxLines: 10,
          textInputAction: TextInputAction.newline,
          autofocus: true,
          focusNode: _focusNode,
          controller: chatTextFieldController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            hintText: "Enter your message here",
            hintStyle: TextStyle(color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
