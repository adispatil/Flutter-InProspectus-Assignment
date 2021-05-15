import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/screens/home_screen.dart';
import 'package:flutter_inprospect_test/utils/app_constants.dart';
import 'package:flutter_inprospect_test/utils/asset_utils.dart' as Assets;
import 'package:flutter_inprospect_test/utils/custom_styles.dart';
import 'package:flutter_inprospect_test/widgets/back_button_widget.dart';
import 'package:flutter_inprospect_test/widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _mEmail;
  String _mPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: EdgeInsets.all(5.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                BackButtonWidget(),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Hero(
                            tag: 'logo',
                            child: Container(
                              height: 200.0,
                              child: Image.asset(Assets.kAssetCompanyLogo),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48.0,
                        ),
                        TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            _mEmail = value;
                          },
                          obscureText: false,
                          decoration: kInputDecorationStyle.copyWith(
                              hintText: 'Enter your email'),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            _mPassword = value;
                          },
                          obscureText: true,
                          decoration: kInputDecorationStyle.copyWith(
                              hintText: 'Enter your password'),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),

                        ///Login Button
                        RoundedButtons(
                          mColor: Colors.lightBlueAccent,
                          mButtonLabel: kLblSignIn,
                          onPressed: () async {
                            setState(() {
                              FocusScope.of(context).unfocus();
                            });
                            Navigator.pushReplacementNamed(context, HomeScreen.id);
                          },
                        ),
                      ],
                    )),
              ],
            ),
          ),
      ),
    );
  }
}
