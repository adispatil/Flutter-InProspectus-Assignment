import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_inprospect_test/utils/app_constants.dart';
import 'package:flutter_inprospect_test/utils/dummy_data.dart';
import 'package:flutter_inprospect_test/widgets/ask_question_textfield_widget.dart';
import 'package:flutter_inprospect_test/widgets/list_title_widget.dart';
import 'package:flutter_inprospect_test/widgets/post_button_widget.dart';
import 'package:flutter_inprospect_test/widgets/user_profile_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Container(
        child: Column(
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
                        color: Color(0xFFE16E3B)),
                  )
                ],
              ),
            ),
            AskQuestionTextFieldWidget(),
            SizedBox(
              height: 5,
            ),
            PostButtonWidget(),
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 8,
                    );
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          UserProfileDetailsWidget(
                              userDisplayName: displayNames[index]),
                          ListTitleWidget(index: index),
                          ListContentTextWidget(index: index),
                          DisplayImageWidget(index: index),
                          LikeCommentWidget(index: index),
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 10, top: 10),
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
                                          contentPadding: EdgeInsets.fromLTRB(
                                              20.0, 10.0, 20.0, 10.0),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 3.0))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class LikeCommentWidget extends StatelessWidget {
  LikeCommentWidget({@required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesomeIcons.thumbsUp,
            color: Colors.blueGrey,
          ),
          SizedBox(width: 5),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              likeCount[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
          ),
          SizedBox(width: 30),
          Icon(
            FontAwesomeIcons.comment,
            color: Colors.blueGrey,
          ),
          SizedBox(width: 5),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              commentCount[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}

class DisplayImageWidget extends StatelessWidget {
  DisplayImageWidget({@required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          Container(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                imagesToDisplay[index],
                fit: BoxFit.fill,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes
                          : null,
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListContentTextWidget extends StatelessWidget {
  ListContentTextWidget({@required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Text(
        contents[index],
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
