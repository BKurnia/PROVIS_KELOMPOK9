import 'package:flutter/material.dart';

class KerjasamaProdi extends StatefulWidget {
  const KerjasamaProdi({Key? key}) : super(key: key);

  @override
  State<KerjasamaProdi> createState() => _KerjasamaProdiState();
}

class _KerjasamaProdiState extends State<KerjasamaProdi> {
  final int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            //     appBar: AppBar(leading: IconButton(icon:Icon(Icons.arrow_back),
            // onPressed:() => Navigator.pop(context, false),)),
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
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(onPressed:()=>Navigator.pop(context), 
                  icon: Icon(Icons.arrow_back, color:Colors.white)),
                  ),
                    Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "KONTRAK KERJASAMA FAKULTAS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ]))
                  ])
            ]),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 20),
              alignment: Alignment.centerLeft,
              child: const Text("Daftar Kontrak Kerjasama Universitas",
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
                            leading: Icon(Icons.account_balance_sharp, size: 40),
                            title: Text(
                              "Rancangan PKKM Prodi Arsitektur dan Wali Kota Bandung",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold,),
                            ),
                            onTap: () {
                              setState(() {
                              });
                            },
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
                            leading: Icon(Icons.account_balance_sharp, size: 40),
                            title: Text(
                              "Pengajaran dan Pengabdian Prodi Ilmu Komunikasi dan Tugubandung.id",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              setState(() {
                              });
                            },
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
                            leading: Icon(Icons.account_balance_sharp, size: 40),
                            title: Text(
                              "PPL di Filipina",
                              style:
                                  const TextStyle( fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold,),
                            ),
                                  onTap: () {
                              setState(() {
                              });
                            },
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
