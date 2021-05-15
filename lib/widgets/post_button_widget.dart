import 'package:flutter/material.dart';

class PostButtonWidget extends StatelessWidget {
  const PostButtonWidget({
    Key key,
  }) : super(key: key);

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
          onPressed: () => {},
          splashColor: Colors.white54,
        ),
        SizedBox(width: 20,)
      ],
    );
  }
}
