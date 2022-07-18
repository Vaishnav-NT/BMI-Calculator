import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final Function() onTap;

  const BottomButton(this.label, this.onTap);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Container(
        color: kBottomButtonColor,
        height: kBottomButtonHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            label,
            style: kBottomButtonTextStyle,
          ),
        ),
      ),
    );
  }
}