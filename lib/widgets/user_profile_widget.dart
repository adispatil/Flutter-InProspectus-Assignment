import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/utils/app_constants.dart';

class UserProfileDetailsWidget extends StatelessWidget {

  UserProfileDetailsWidget({this.userDisplayName, this.timeStamp});
  final String userDisplayName;
  final String timeStamp;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0, top: 15.0),
          child: CircleAvatar(
            minRadius: 20.0,
            backgroundImage: NetworkImage(kDummyProfileImageUrl),
            backgroundColor: Colors.transparent,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                userDisplayName,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                timeStamp,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
