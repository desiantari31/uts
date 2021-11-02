import 'package:flutter/material.dart';
import 'package:latihan_app/Models/Posyandu.dart';
import 'package:latihan_app/Services/apiStatic.dart';
import 'package:latihan_app/UI/detailPosyandu.dart';
import 'package:latihan_app/UI/widget/buttomBar.dart';

class PosyanduPage extends StatefulWidget {
  const PosyanduPage({Key? key}) : super(key: key);

  @override
  _PosyanduPageState createState() => _PosyanduPageState();
}

class _PosyanduPageState extends State<PosyanduPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Posyandu"),
        ),
        body: FutureBuilder<List<Posyandu>>(
          future: ApiStatic.getPosyandu(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              List<Posyandu> listPosyandu = snapshot.data!;
              return Container(
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  itemCount: listPosyandu.length,
                  itemBuilder: (BuildContext context, int index) =>
                      Column(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => DetailPosyandu(
                                  posyandu: listPosyandu[index],
                                )));
                      },
                      child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(top: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.white,
                              border: Border.all(
                                  width: 1, color: Colors.lightBlueAccent)),
                          child: Row(
                            children: [
                              Icon(Icons.verified_user),
                              Column(
                                children: [
                                  Text(listPosyandu[index].nama),
                                  Text(
                                    listPosyandu[index].alamat,
                                    style: TextStyle(fontSize: 8),
                                  ),
                                ],
                              )
                            ],
                          )),
                    )
                  ]),
                ),
              );
            }
          },
        ),
        bottomNavigationBar: buildBottomBar(1, context));
  }
}
