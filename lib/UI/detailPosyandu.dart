import 'package:flutter/material.dart';
import 'package:latihan_app/Models/Posyandu.dart';

class DetailPosyandu extends StatefulWidget {
  DetailPosyandu({required this.posyandu});
  final Posyandu posyandu;

  @override
  _DetailPosyanduState createState() => _DetailPosyanduState();
}

class _DetailPosyanduState extends State<DetailPosyandu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.posyandu.nama),
        ),
        body: Container(
          width: double.infinity,
          child: ListView(
            children: [
              Icon(Icons.people),
              Container(
                padding: EdgeInsets.all(5),
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bc), Color(0xff295cb5)], 
                  ),
                ),
                child: Text(
                  widget.posyandu.alamat,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bc), Color(0xff295cb5)],
                  ),
                ),
                child: Text(
                  widget.posyandu.ibu,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bc), Color(0xff295cb5)],
                  ),
                ),
                child: Text(
                  widget.posyandu.telp,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.lightBlue,
                width: double.infinity,
                height: double.maxFinite,
              )
            ],
          ),
        ));
  }
}
