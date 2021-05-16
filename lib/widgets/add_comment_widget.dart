
import 'package:flutter/material.dart';

class AddCommentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Material(
              elevation: 5.0,
              shadowColor: Colors.black,
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 2,
                textInputAction: TextInputAction.newline,
                autofocus: false,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.send_rounded),
                    hintText: 'Type your comment...',
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide:
                        BorderSide(color: Colors.white, width: 3.0))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}