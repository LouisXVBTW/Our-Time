import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:io' show Platform;
import '../main.dart';
import '../httprequests.dart';

class WeatherPage extends StatefulWidget {
  WeatherPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WeatherPage createState() => _WeatherPage();
}

class _WeatherPage extends State<WeatherPage> {

  String _timeString;
  String _lmain = wldn.main;
  String _ldescripton= wldn.description;
  String _ltemp = wldn.temp;
  //String _lhumidity = "-";
  //String _lwindspeed = "-";
  //String _lwinddirection = "-";
  //String _lclouds = "-";
  String _rmain = wruh.main;
  String _rdescripton = wruh.description;
  String _rtemp = wruh.temp;
  //String _rhumidity = "-";
  //String _rwindspeed = "-";
  //String _rwinddirection = "-";
  //String _rclouds = "-";
  String _pmain = wph.main;
  String _pdescripton = wph.description;
  String _ptemp = wph.temp;
  //String _phumidity = "-";
  //String _pwindspeed = "-";
  //String _pwinddirection = "-";
  //String _pclouds = "-";





  @override
  Widget build(BuildContext context) {
    wldn.main = '';

    return Scaffold(
      //appBar: AppBar(title: Text("THIS IS A TEST", style: new TextStyle(color: Color(0xff8e44ad),),), backgroundColor: Color(0xffc7ecee),),

      body: Center( child: Container( color: Color(0xffc7ecee),


          child: Stack(children: <Widget>[


          new Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Expanded(child:
              new SizedBox(

                  width: double.infinity,
                  child: new Container(
                      margin: EdgeInsets.all(5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFF283350),
                          borderRadius: BorderRadius.all(Radius.circular(16.0))
                      ),


                      padding: EdgeInsets.all(5),
                      child:
                  new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

                  new Container(padding: EdgeInsets.only(left: 10), child:new Text(_lmain,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFFFB500)))),
                  new Container(padding: EdgeInsets.only(left: 10), child:new Text(_ldescripton,textAlign: TextAlign.center,style: new TextStyle(fontSize: 20, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFFFB500)))),


              new Expanded(child: Text(_ltemp,textAlign: TextAlign.center,style: new TextStyle(fontSize: 80,fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFFFB500)))),

            ],)))),
          new Expanded(child:
          new SizedBox(

              width: double.infinity,
              child: new Container(
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFF93800),
                      borderRadius: BorderRadius.all(Radius.circular(16.0))
                  ),


                  padding: EdgeInsets.all(5),
                  child:
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Container(padding: EdgeInsets.only(left: 10), child:new Text(_rmain,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFF283350)))),
                          new Container(padding: EdgeInsets.only(left: 10), child:new Text(_rdescripton,textAlign: TextAlign.center,style: new TextStyle(fontSize: 20, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFF283350)))),

                        ],),
                      new Expanded(child: Text(_rtemp,textAlign: TextAlign.center,style: new TextStyle(fontSize: 80, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFF283350)))),

                    ],)))),
          new Expanded(child:
          new SizedBox(

              width: double.infinity,
              child: new Container(
                  margin: EdgeInsets.all(5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFB500),
                      borderRadius: BorderRadius.all(Radius.circular(16.0))
                  ),


                  padding: EdgeInsets.all(5),
                  child:
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Container(padding: EdgeInsets.only(left: 10), child:new Text(_pmain,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFF93800)))),
                          new Container(padding: EdgeInsets.only(left: 10), child:new Text(_pdescripton,textAlign: TextAlign.center,style: new TextStyle(fontSize: 20, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFF93800)))),

                        ],),
                      new Expanded(child: Text(_ptemp,textAlign: TextAlign.center,style: new TextStyle(fontSize: 80, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFF93800)))),

                    ],

          )
              )))],

    ),
          new Container(
            alignment: Alignment.bottomRight,
            child: new GestureDetector(
              onTap: () async{
                await API.getALL();
                setState(() {
                  _lmain = wldn.main;
                  _ldescripton = wldn.description;
                  _ltemp = wldn.temp;
                  _rmain = wruh.main;
                  _rdescripton = wruh.description;
                  _rtemp = wruh.temp;
                  _pmain = wph.main;
                  _pdescripton = wph.description;
                  _ptemp = wph.temp;

                });

              },
              child: new Container(
                padding: EdgeInsets.only(bottom: 20, right: 20),
                child: Image.asset("assets/images/refreshweather.png", width: 50, height: 50,),
              ),
            ),
          )
          ],))));
  }
}
