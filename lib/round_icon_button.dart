import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData buttonIcon;
  final Function() onPressed;

  RoundIconButton(this.buttonIcon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: kRoundIconButtonFillColor,
      shape: const CircleBorder(),
      elevation: 6.0,
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 48.0,
        height: 48.0,
      ),
      child: Icon(
        buttonIcon,
        size: kButtonIconSize,
      ),
    );
  }
}