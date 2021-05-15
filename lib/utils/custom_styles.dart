
import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/utils/color_constants.dart';

const kLoginScreenButtonStyle = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 18.0,
    color: Colors.white
);

const kRegularInputTextStyle = TextStyle(
  color: kColorTextRegular,
  fontSize: 18.0,
);

const kInputDecorationStyle = InputDecoration(
  hintText: 'Enter your email',
  hintStyle: TextStyle(color: kColorTextHint),
  contentPadding: EdgeInsets.symmetric(
      vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);