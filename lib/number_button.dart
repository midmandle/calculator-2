import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final String value;
  const NumberButton({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(value, textDirection: TextDirection.ltr);
  }
}
