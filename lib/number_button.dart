import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final String value;

  final Function(String value) onClickHandler;
  const NumberButton({Key? key, required this.value, required this.onClickHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(onPressed: () => onClickHandler(value),
    child: Text(value, textDirection: TextDirection.ltr));
  }
}
