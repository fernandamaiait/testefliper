import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;

  Button(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.subtitle2,
      ),
      onPressed: onPressed,
    );
  }
}
