import 'package:flutter/material.dart';

Widget usuarios() {
  return Align(
    alignment: Alignment.centerRight,
    child: Stack(children: [
      Container(
        width: 70,
        child: Align(
          alignment: Alignment.centerRight,
          child: CircleAvatar(
            radius: 17, // Image radius
            backgroundImage: NetworkImage("https://pixy.org/src/487/thumbs190/4877641.jpg"),
          ),
        ),
      ),
      Positioned(
        left: 18,
        child: CircleAvatar(
          radius: 17, // Image radius
          backgroundImage: NetworkImage("https://pixy.org/src2/579/thumbs190/5798990.jpg"),
        ),
      ),
      Positioned(
        child: Container(
          child: CircleAvatar(
            radius: 17, // Image radius
            backgroundImage: NetworkImage("https://pixy.org/src2/574/thumbs190/5740222.jpg"),
          ),
        ),
      ),
    ]),
  );
}
