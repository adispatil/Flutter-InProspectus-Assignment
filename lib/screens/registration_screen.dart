import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/screens/login_screen.dart';
import 'package:flutter_inprospect_test/utils/app_constants.dart';
import 'package:flutter_inprospect_test/utils/custom_styles.dart';
import 'package:flutter_inprospect_test/widgets/back_button_widget.dart';
import 'package:flutter_inprospect_test/widgets/rounded_button.dart';
import 'package:flutter_inprospect_test/utils/asset_utils.dart' as Assets;

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String _mEmail;
  String _mPassword;
  String _mFirstName;
  String _mLastName;
  String _mMobileNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ///back button widget
              BackButtonWidget(),

              ///login ui
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Center(
                      child: ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(5.0),
                        children: <Widget>[
                          Hero(
                            tag: 'logo',
                            child: Container(
                              height: 200.0,
                              child: Image.asset(Assets.kAssetCompanyLogo),
                            ),
                          ),
                          SizedBox(
                            height: 48.0,
                          ),

                          ///first name
                          TextField(
                            style: kRegularInputTextStyle,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            textCapitalization: TextCapitalization.words,
                            onChanged: (value) {
                              _mFirstName = value;
                            },
                            obscureText: false,
                            decoration: kInputDecorationStyle.copyWith(
                                hintText: kHintEnterYourFirstName),
                          ),

                          SizedBox(
                            height: 8.0,
                          ),

                          SizedBox(
                            height: 8.0,
                          ),

                          /// create user name
                          TextField(
                            style: kRegularInputTextStyle,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              _mEmail = value;
                            },
                            obscureText: false,
                            decoration: kInputDecorationStyle.copyWith(
                                hintText: kHintCreateUserName),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),

                          /// Password
                          TextField(
                            style: kRegularInputTextStyle,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            onChanged: (value) {
                              _mPassword = value;
                            },
                            obscureText: true,
                            decoration: kInputDecorationStyle.copyWith(
                                hintText: kHintEnterYourPassword),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),

                          /// confirm password
                          TextField(
                            style: kRegularInputTextStyle,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              _mMobileNumber = value;
                            },
                            obscureText: false,
                            decoration: kInputDecorationStyle.copyWith(
                                hintText: kHintConfirmPassword),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),

                          /// Email address
                          TextField(
                            style: kRegularInputTextStyle,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              _mEmail = value;
                            },
                            obscureText: false,
                            decoration: kInputDecorationStyle.copyWith(
                                hintText: kHintEnterYourEmailAddress),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),

                          /// register button
                          RoundedButtons(
                            mColor: Colors.blueAccent,
                            mButtonLabel: kLblRegister,
                            onPressed: () {
                              setState(() {
                                FocusScope.of(context).unfocus();
                              });
                              try {
                                Navigator.pushReplacementNamed(
                                    context, LoginScreen.id);
                              } catch (e) {
                                print('Something wrong while creating user');
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
