import 'package:flutter/material.dart';

class LoginAlertDialog extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String message;
  final String signInBtnText;
  final Function onSignInPressed;
  final String cancelBtnText;
  final Function onCancelPressed;
  final double circularBorderRadius;

  LoginAlertDialog({
    this.title,
    this.message,
    this.circularBorderRadius = 15.0,
    this.bgColor = Colors.white,
    this.signInBtnText,
    this.onSignInPressed,
    this.cancelBtnText,
    this.onCancelPressed,
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
        signInBtnText != null
            ? MaterialButton(
                child: Text(signInBtnText),
                textColor: Theme.of(context).accentColor,
                onPressed: () {
                  if (onSignInPressed != null) {
                    onSignInPressed();
                  }
                  // Navigator.pop(context);
                },
              )
            : null,
        cancelBtnText != null? MaterialButton(
            child: Text(cancelBtnText),
            textColor: Theme.of(context).accentColor,
            onPressed: (){
              Navigator.pop(context);
            }) : null,
      ],
    );
  }
}
