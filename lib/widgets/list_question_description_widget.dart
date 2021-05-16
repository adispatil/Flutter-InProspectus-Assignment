import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/utils/dummy_data.dart';

class ListContentTextWidget extends StatelessWidget {
  ListContentTextWidget({@required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Text(
        contents.reversed.toList()[index],
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
