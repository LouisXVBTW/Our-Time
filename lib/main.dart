import 'dart:async';
import 'viewa.dart';
import 'package:flutter/material.dart';
import 'profile/status.dart';
import 'profile/sleep.dart';
import 'profile/mood.dart';
import 'profile/dream.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:intl/intl.dart';
import 'dart:math';
import 'pages/time.dart';
import 'pages/profile.dart';
import 'pages/weather.dart';
import 'dart:io' show Platform;
import 'package:flip_card/flip_card.dart';
import 'httprequests.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our Time',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoadingScreen()/*(title: 'Our Time')*/,
    );
  }
}
class LoadingScreen extends StatefulWidget {
  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  var timer;
  int _loading;
  void initState(){
    _loading = 0;
    super.initState();
    _asyncmethod();

    //if (glob.load == 1){
      //timer.cancel();
    //}
    //timer.cancel();

  }
  _asyncmethod() async{
    await API.getALL();
    await API.getProfile();
    Navigator.of(context).pop();
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
  }
  void _checkfornew(){
    if(_loading == 1){
      print('Load is 1');

      Navigator.of(context).pop();
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));

    }else{
      print('Load is 0');
    }
  }

  @override
  Widget build(BuildContext context) {

    return new Container(

      decoration: new BoxDecoration(
        color: Color(0xffc7ecee),
        image: new DecorationImage(

          image: new AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: null,
    );

  }

}


class Glob {
  int tmp;
  List apikeys;
  List monthendings;
  int load;
  int killt;
  Glob({this.monthendings,this.tmp,this.apikeys,this.load, this.killt});
}

class LDNWeather{
  String main;
  String description;
  String temp;
  String humidity;
  String windspeed;
  String winddirection;
  String clouds;

  LDNWeather({this.main,this.description,this.clouds,this.humidity,this.temp,this.winddirection,this.windspeed,});
}
class RUHWeather{
  String main;
  String description;
  String temp;
  String humidity;
  String windspeed;
  String winddirection;
  String clouds;

  RUHWeather({this.main,this.description,this.clouds,this.humidity,this.temp,this.winddirection,this.windspeed,});
}
class PHWeather{
  String main;
  String description;
  String temp;
  String humidity;
  String windspeed;
  String winddirection;
  String clouds;

  PHWeather({this.main,this.description,this.clouds,this.humidity,this.temp,this.winddirection,this.windspeed,});
}
class LOCALWeather{
  String main;
  String description;
  String temp;
  String humidity;
  String windspeed;
  String winddirection;
  String clouds;

  LOCALWeather({this.main,this.description,this.clouds,this.humidity,this.temp,this.winddirection,this.windspeed,});
}

class USERmoods{
  String id;
  String name;
  String mood;
  String sleep;
  String dream;
  String status;
  USERmoods({this.mood, this.sleep, this.dream, this.status, this.name, this.id});

}
final umoods = USERmoods(
  id: '----',
  name: '----',
  mood: '----',
  sleep: '----',
  dream: '----',
  status: '----',

);
class OTHERmoods{
  String id;
  String name;
  String mood;
  String sleep;
  String dream;
  String status;
  OTHERmoods({this.mood, this.sleep, this.dream, this.status, this.name, this.id});

}
final omoods = OTHERmoods(
  id: '----',
  name: '----',
  mood: '----',
  sleep: '----',
  dream: '----',
  status: '----',

);
final glob = Glob(
  tmp: 0,
  apikeys: ['7f6799da842f4da68ab01d63497dae5e','e1ecf5e709ba78d4d08da4edb0994b9a', '3d5d2e7f3bb72fcd1425808a02678b30', '7a09da8117d6b7e837cd5ccf859cfa71'],
  load: 0,
  killt: 0,
);
final wldn = LDNWeather(
  main: "Loading",
  description: "Loading",
  temp: "Loading",
  humidity: "Loading",
  winddirection: "Loading",
  windspeed: "Loading",
  clouds: "Loading",
);
final wruh = RUHWeather(
  main: "Loading",
  description: "Loading",
  temp: "Loading",
  humidity: "Loading",
  winddirection: "Loading",
  windspeed: "Loading",
  clouds: "Loading",
);
final wph = PHWeather(  main: "Loading",
  description: "Loading",
  temp: "Loading",
  humidity: "Loading",
  winddirection: "Loading",
  windspeed: "Loading",
  clouds: "Loading",
);
final wlocal = LOCALWeather(  main: "Loading",
  description: "Loading",
  temp: "Loading",
  humidity: "Loading",
  winddirection: "Loading",
  windspeed: "Loading",
  clouds: "Loading",
);


