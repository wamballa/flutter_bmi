import 'package:flutter/material.dart';
import 'package:flutter_bmi/constants.dart';
import 'package:flutter_bmi/components/reusable_card.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});
  final onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ReusableWidget(
      onPress: onTap,
      colour: kBottomContainerColor,
      cardChild: Container(
        alignment: Alignment.center,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        // color: kBottomContainerColor,
        width: double.infinity,
        child: Text(
          buttonTitle,
          style: kCalculateButtonTextStyle,
        ),
      ),
    );
  }
}
