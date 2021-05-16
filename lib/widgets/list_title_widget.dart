import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/utils/dummy_data.dart';

class ListTitleWidget extends StatelessWidget {
  ListTitleWidget({@required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Text(
        titles.reversed.toList()[index],
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
