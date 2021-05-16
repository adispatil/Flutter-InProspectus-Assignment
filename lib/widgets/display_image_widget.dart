
import 'package:flutter/material.dart';
import 'package:flutter_inprospect_test/utils/dummy_data.dart';

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
                imagesToDisplay.reversed.toList()[index],
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