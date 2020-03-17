import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:io' show Platform;
import 'package:flip_card/flip_card.dart';
import '../main.dart';

class TimePage extends StatefulWidget {
  TimePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TimePage createState() => _TimePage();
}

class _TimePage extends State<TimePage> {
  String _timeString;
  String _usermood;
  String _usersleep;
  String _userdream;
  var timer;

  @override
  void initState() {

    //API.getALL();
    //API.getUID();
    //String udid = FlutterUdid.consistentUdid;
    print("init State");
    if (Platform.isAndroid) {
      print('android');
      // Android-specific code
    } else if (Platform.isIOS) {
      print('iphone');
      // iOS-specific code
    }

    _timeString = _formatDateTime(DateTime.now());
    timer = Timer.periodic(Duration(seconds: 1), (Timer t){
      _getTime();
      if (glob.killt == 1){
        timer.close();
      }

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dat = new DateFormat.yMd().format(new DateTime.now());
    var hour = new DateFormat.H().format(new DateTime.now());
    var minute = new DateFormat.m().format(new DateTime.now());
    var second = new DateFormat.s().format(new DateTime.now());
    //print(second);
    var ms = new DateFormat.ms().format(new DateTime.now());
    var ldntime = "";
    var ldndate = "";
    var phtime = "";
    var phdate = "";
    var rtime = "";
    var rdate = "";

    int hourint  = int.parse(hour);
    /*if (hourint > 21){
      hourint =
    };*/
    //print (hour);
    var timezonename = DateTime.now().timeZoneName;
    var timezoneoffset = DateTime.now().timeZoneOffset.toString();
    List<String> newlist = timezoneoffset.split(":");
    List<String> dates = dat.split("/");
    int offset = int.parse(newlist[0]);
    int tmpldntime1 = (offset - 1)*-1;
    int tmpldntime2 = hourint + tmpldntime1;
    int tmpphtime1 = (offset - 8)*-1;
    int tmpphtime2 = hourint + tmpphtime1;
    int tmprtime1 = (offset - 3)*-1;
    int tmprtime2 = hourint + tmprtime1;
    int dateph = int.parse(dates[1]);
    int dater = int.parse(dates[1]);
    int dateldn = int.parse(dates[1]);

    if (tmpldntime2 < 1){
      tmpldntime2 = 24 +tmpldntime2;
      dateldn = dateldn - 1;
    }else if(tmpldntime2 > 24){
      tmpldntime2 = tmpldntime2-24;
      dateldn = dateldn + 1;
    };
    if (tmpphtime2 < 1){
      tmpphtime2 = 24 +tmpphtime2;
      dateph = dateph - 1;
    }else if(tmpphtime2 > 24){
      tmpphtime2 = tmpphtime2 -24;
      dateph = dateph + 1;
    };
    if (tmprtime2 < 1){
      tmprtime2 = 24 +tmprtime2;
      dater = dater - 1;
    }else if(tmprtime2 > 24){
      tmprtime2 = tmprtime2-24;
      dater = dater + 1;
    };
    if (tmpldntime2 == 24){
      tmpldntime2 = 0;
    }else if (tmpphtime2 == 24){
      tmpphtime2 = 0;
    }else if (tmprtime2 ==24){
      tmprtime2 = 0;
    }

    ldntime = tmpldntime2.toString()+":"+ms+"";
    ldndate = dateldn.toString()+"/"+dates[0].toString()+"/"+dates[2]+"";
    phtime = tmpphtime2.toString()+":"+ms+"";
    phdate = dateph.toString()+"/"+dates[0].toString()+"/"+dates[2]+"";
    rtime = tmprtime2.toString()+":"+ms+"";
    rdate = dater.toString()+"/"+dates[0].toString()+"/"+dates[2]+"";
    return Scaffold(
      //appBar: AppBar(title: Text("THIS IS A TEST", style: new TextStyle(color: Color(0xff8e44ad),),), backgroundColor: Color(0xffc7ecee),),

      body: Center( child: Container( color: Color(0xffc7ecee),


          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Expanded(child:
              new Container(

                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xFF283350),
                          borderRadius: BorderRadius.all(Radius.circular(16.0))
                      ),


                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(child: new Container(padding: EdgeInsets.only(left: 10),child: Text("LDN", textAlign: TextAlign.left, style: new TextStyle(fontSize: 50, fontFamily: 'Lemon', fontWeight: FontWeight.w300, color: Color(0xFFFFB500))))),
                          new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Container(padding: EdgeInsets.only(right: 40), child:new Text(ldntime,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFFFB500)))),
                              new Container(padding: EdgeInsets.only(right: 40), child:new Text("GMT +1",textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFFFB500)))),
                              new Container(padding: EdgeInsets.only(right: 40), child:new Text(ldndate,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFFFB500)))),
                            ],),

                        ],))),
              new Expanded(child: new Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xFFF93800),
                          borderRadius: BorderRadius.all(Radius.circular(16.0))
                      ),


                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(child: new Container(padding: EdgeInsets.only(left: 10),child: Text("RUH", textAlign: TextAlign.left, style: new TextStyle(fontSize: 50, fontFamily: 'Lemon', fontWeight: FontWeight.w300, color: Color(0xFF283350))))),
                          new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Container(padding: EdgeInsets.only(right: 40), child:new Text(rtime,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFF283350)))),
                              new Container(padding: EdgeInsets.only(right: 40), child:new Text("GMT +3",textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFF283350)))),
                              new Container(padding: EdgeInsets.only(right: 40), child:new Text(rdate,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFF283350)))),
                            ],),

                        ],))),
              new Expanded(child:
              new Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFB500),
                          borderRadius: BorderRadius.all(Radius.circular(16.0))
                      ),


                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(child: new Container(padding: EdgeInsets.only(left: 10),child: Text("PH", textAlign: TextAlign.left, style: new TextStyle(fontSize: 50, fontFamily: 'Lemon', fontWeight: FontWeight.w300, color: Color(0xFFF93800))))),
                          new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Container(padding: EdgeInsets.only(right: 40), child:new Text(phtime,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFF93800)))),
                              new Container(padding: EdgeInsets.only(right: 40), child:new Text("GMT +8",textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFF93800)))),
                              new Container(padding: EdgeInsets.only(right: 40), child:new Text(phdate,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFF93800)))),
                            ],),

                        ],))),
            ],

          )
      )),
    );
  }

  void _getTime() async{
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
      /*_usermood = umoods.mood;
      _usersleep = umoods.sleep;
      _userdream = umoods.dream;*/

    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('MM/dd/yyyy hh:mm:ss').format(dateTime);
  }
}
