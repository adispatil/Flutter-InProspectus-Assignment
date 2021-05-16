import 'package:flutter/material.dart';

class AskQuestionTextFieldWidget extends StatelessWidget {

  AskQuestionTextFieldWidget({this.onTextChanged, this.controller});
  // const AskQuestionTextFieldWidget({
  //   Key key,
  // }) : super(key: key);



  final Function onTextChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Material(
        elevation: 20.0,
        shadowColor: Colors.black,
        child: TextFormField(
          keyboardType: TextInputType.multiline,
          minLines: 5,
          maxLines: 5,
          controller: controller,
          onChanged: onTextChanged,
          textInputAction: TextInputAction.done,
          autofocus: false,
          decoration: InputDecoration(
              hintText: 'Have a burning question in mind? \nAsk to the community...',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(color: Colors.white, width: 3.0))),
        ),
      ),
    );
  }
}
