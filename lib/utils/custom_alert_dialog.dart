import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String message;
  final String positiveBtnText;
  final Function onPositivePressed;
  final double circularBorderRadius;

  CustomAlertDialog({
    this.title,
    this.message,
    this.circularBorderRadius = 15.0,
    this.bgColor = Colors.white,
    this.positiveBtnText,
    this.onPositivePressed,
  })  : assert(bgColor != null),
        assert(circularBorderRadius != null);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null ? Text(title) : null,
      content: message != null ? Text(message) : null,
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circularBorderRadius)),
      actions: <Widget>[

        positiveBtnText != null
            ? MaterialButton(
          child: Text(positiveBtnText),
          textColor: Theme.of(context).accentColor,
          onPressed: () {
            if (onPositivePressed != null) {
              onPositivePressed();
            }
            Navigator.pop(context);
            // Navigator.of(context, rootNavigator: true).pop('dialog');
          },
        )
            : null,
      ],
    );
  }
}