import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/utils/app_constants.dart';
import 'package:flutter_inprospect_test/utils/custom_alert_dialog.dart';
import 'package:flutter_inprospect_test/utils/login_alert_dialog.dart';

class PostButtonWidget extends StatelessWidget {
  PostButtonWidget(
      {@required this.userInputText,
      @required this.onSuccessOkClicked,
      @required this.onSaveData,
      @required this.onSignInClicked,
      @required this.onSignInCancelPressed});

  final String userInputText;
  final Function onSuccessOkClicked;
  final Function onSaveData;
  final Function onSignInClicked;
  final Function onSignInCancelPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        MaterialButton(
          padding: EdgeInsets.all(5),
          elevation: 5,
          color: Colors.blueAccent,
          textColor: Colors.white,
          child: new Text(
            "Post",
            style: new TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            if (!kIsLoggedInUser) {
              //User is not authenticated
              var dialog = LoginAlertDialog(
                title: "Access Denied",
                message:
                    "You are not authorised to ask a question. \n\nPlease Sign In",
                onSignInPressed: () {
                  onSignInClicked();
                },
                signInBtnText: 'Sign In',
                cancelBtnText: 'Cancel',
                onCancelPressed: () {
                  onSignInCancelPressed();
                },
              );
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => dialog);
            } else if (userInputText != null &&
                userInputText.isNotEmpty &&
                kIsLoggedInUser) {
              onSaveData();
              var dialog = CustomAlertDialog(
                  title: "Successful",
                  message:
                      "Your question submitted successfully. \nNow sit back and get suggestion from rest of community...",
                  onPositivePressed: () {
                    onSuccessOkClicked();
                  },
                  positiveBtnText: 'OK');
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => dialog);
            } else {
              //show alert dialog
              var dialog = CustomAlertDialog(
                  title: "Validation Error",
                  message: "Please enter valid question",
                  onPositivePressed: () {},
                  positiveBtnText: 'OK');
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => dialog);
            }
          },
          splashColor: Colors.white54,
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
