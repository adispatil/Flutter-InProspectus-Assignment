
import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/utils/custom_styles.dart';

class RoundedButtons extends StatelessWidget {

  RoundedButtons({this.mColor, this.mButtonLabel, this.onPressed});

  final MaterialAccentColor mColor;
  final String mButtonLabel;
  final Function onPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: mColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            mButtonLabel,
            style: kLoginScreenButtonStyle,
          ),
        ),
      ),
    );
  }
}