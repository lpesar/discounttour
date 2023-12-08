import 'package:flutter/material.dart';

Widget precio(BuildContext context, String pais, String incluye, String puntaje, double precio) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
    width: 380,
    height: 110,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 30,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg"),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 70,
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(238, 246, 251, 1),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 85,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          pais,
                          style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          incluye,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$ " + precio.toString(),
                          style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Container(
                    height: 90,
                    width: 35,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: const Color.fromRGBO(22, 158, 107, 1)),
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
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
