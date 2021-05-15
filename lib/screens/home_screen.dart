import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_inprospect_test/utils/app_constants.dart';
import 'package:flutter_inprospect_test/utils/dummy_data.dart';
import 'package:flutter_inprospect_test/widgets/ask_question_textfield_widget.dart';
import 'package:flutter_inprospect_test/widgets/post_button_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InProspects'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {kMenuOptionLogin, kMenuOptionSetting}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.local_fire_department_sharp,
                  size: 35,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Have a burning question in mind? \nAsk to the community...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFFE16E3B)
                  ),
                )
              ],
            ),
          ),
          AskQuestionTextFieldWidget(),

          SizedBox(height: 5,),
          
          PostButtonWidget(),

          ListView.builder(
              itemCount: titles.length,
              itemBuilder: (context, index){

          }),

        ],
      ),
    );
  }
}