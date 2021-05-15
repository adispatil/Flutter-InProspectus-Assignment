import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/screens/login_screen.dart';
import 'package:flutter_inprospect_test/screens/registration_screen.dart';
import 'package:flutter_inprospect_test/utils/asset_utils.dart' as Assets;
import 'package:flutter_inprospect_test/widgets/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ///title & image
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset(Assets.kAssetCompanyLogo),
                    height: 80.0,
                    width: 80.0,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black38),
                    child: Text('InProspect Technology'),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 48.0,
            ),

            ///button sign in
            RoundedButtons(
                mColor: Colors.lightBlueAccent,
                mButtonLabel: 'Sign In',
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),

            ///button sign up
            RoundedButtons(
                mColor: Colors.blueAccent,
                mButtonLabel: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
