import 'package:discounttour/models/tour_model.dart';
import 'package:discounttour/widget/widget_country.dart';
import 'package:discounttour/widget/widget_precio.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ListaTours> tours = [];

  void initState() {
    super.initState();
    tours = [
      ListaTours(pais: "Thailandia", incluye: "10 nigths for two/all inclusive", puntaje: "4.5", precio: 245.50),
      ListaTours(pais: "Peru", incluye: "10 nigths for two/all inclusive", puntaje: "5.0", precio: 300.00),
      ListaTours(pais: "Ecuador", incluye: "10 nigths for two/all inclusive", puntaje: "3.4", precio: 200.00),
      ListaTours(pais: "Italia", incluye: "10 nigths for two/all inclusive", puntaje: "4.0", precio: 500.00),
      ListaTours(pais: "Chile", incluye: "10 nigths for two/all inclusive", puntaje: "3.2", precio: 220.00),
      ListaTours(pais: "Brazil", incluye: "10 nigths for two/all inclusive", puntaje: "3.9", precio: 310.00),
      ListaTours(pais: "EEUU", incluye: "10 nigths for two/all inclusive", puntaje: "4.9", precio: 410.50),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Sistema de Venta de Paquetes Turisticos",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.rocket,
              color: Colors.orange,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              "Discount Tour",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Country",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tours.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        country(tours[index].pais, tours[index].puntaje),
                      ],
                    );
                  }),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular Tours",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: tours.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        precio(context, tours[index].pais, tours[index].incluye, tours[index].puntaje, tours[index].precio),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
