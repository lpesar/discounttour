import 'package:discounttour/widget/widget_usuarios.dart';
import 'package:flutter/material.dart';

Widget country(String ls_pais, String puntaje) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
    padding: const EdgeInsets.fromLTRB(15, 20, 10, 15),
    width: 170,
    height: 240,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage("https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg"),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white30,
                  ),
                  child: Center(
                    child: Text(
                      "New",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                usuarios()
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 100,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ls_pais,
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "18 Tours",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    puntaje,
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
