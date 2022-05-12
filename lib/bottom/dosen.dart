import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart' ;

class Dosen extends StatefulWidget {
  const Dosen({Key? key}) : super(key: key);

  @override
  State<Dosen> createState() => _DosenState();
}

class _DosenState extends State<Dosen> {
  List<String> datastatistik = [
    "Total Dosen",
    "Total Penelitian Dosen",
    "Total Dosen S2",
    "Total Dosen S3"
  ];

  List<int> angka = [500, 2310, 300, 200];

  final int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Stack(children: <Widget>[
              //BG(Layer 1)
              Container(
                margin: const EdgeInsets.only(top: 0),
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img-dashboard.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Column(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "INFORMASI DOSEN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ]))
                  ])
            ]),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 20),
              alignment: Alignment.centerLeft,
              child: const Text("Statistik",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (1 / .4),
                shrinkWrap: true,
                children: List.generate(angka.length, (index) {
                  return Card(
                    color: Colors.blueAccent,
                    
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          //leading: Icon(Icons.album, size: 45),
                          title: Text(
                            datastatistik[index],
                            style:
                                TextStyle(fontSize: 16, color: Colors.white70),
                          ),
                          subtitle: Text(angka[index].toString(),
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white)),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 20),
              alignment: Alignment.centerLeft,
              child: const Text("Dosen Terbaik",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),
            Container(
              margin: const EdgeInsets.only( left: 30, right: 30),
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: (1 / .2),
                shrinkWrap: true,
                children: [
                  Card(
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Container(
                          child: ListTile(
                            leading: Icon(Icons.school_outlined, size: 40),
                            trailing: new Text("30 Penelitian", style: TextStyle(color: Colors.white),),
                            title: Text(
                              "Prof. Dr. Munir, M. IT.",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70),
                            ),
                            subtitle: Text("Ilmu Komputer",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.teal[50],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Container(
                          child: ListTile(
                            leading: Icon(Icons.school_outlined, size: 40),
                            trailing: new Text("27 Penelitian", style: TextStyle(color: Colors.black),),
                            title: Text(
                              "Dr. Yudi Wibisono, M.T.",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black54),
                            ),
                            subtitle: Text("Ilmu Komputer",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Container(
                          child: ListTile(
                            leading: Icon(Icons.school_outlined, size: 40),
                            trailing: new Text("26 Penelitian", style: TextStyle(color: Colors.white),),
                            title: Text(
                              "Dr. Muhammad Nursalman, M.T.",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70),
                            ),
                            subtitle: Text("Ilmu Komputer",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                   Card(
                    color: Colors.teal[50],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Container(
                          child: ListTile(
                            leading: Icon(Icons.school_outlined, size: 40),
                            trailing: new Text("24 Penelitian", style: TextStyle(color: Colors.black),),
                            title: Text(
                              "Dr. Lala Septem Riza, M.T.",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black54),
                            ),
                            subtitle: Text("Ilmu Komputer",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        
      ),
    );
  }
}
