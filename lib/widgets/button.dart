import 'package:flutter/material.dart';
import 'package:trueble/widgets/ButtonTheme.dart';

class NewWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const NewWidget({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: button(context),
      onPressed: onPressed,
      child: Text("Teste"),
    );
  }
}
