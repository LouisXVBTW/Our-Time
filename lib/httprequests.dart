import 'dart:convert' as JSON;
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:http/http.dart' as http;
import 'main.dart';
import 'dart:math';
class API {
  static Future getALL() async {
    int rldn = new Random().nextInt(4);
    int rruh = new Random().nextInt(4);
    int rph = new Random().nextInt(4);
    print ("rldn: "+rldn.toString());
    print ("rruh: "+rruh.toString());
    print ("rph: "+rph.toString());
    var apildn = glob.apikeys[rldn];
    var urlldn = 'http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID='+apildn+'';
    var replyldn = await http.get(Uri.encodeFull(urlldn), headers: {"Accept": "application/json"});
    print (replyldn.body);
    final ldninfo = replyldn.body;
    Map ldnlistdata = JSON.jsonDecode(ldninfo);
    print (ldnlistdata);
    wldn.main = ldnlistdata['weather'][0]["main"];
    wldn.description = ldnlistdata['weather'][0]["description"];
    wldn.temp = (ldnlistdata['main']['temp']-273.15).round().toString()+'°C';
    //wldn.humidity = 'Humidity: '+ldnlistdata['main']['humidity'].toString()+'%';
    //wldn.windspeed = 'Wind Speed: '+ldnlistdata['wind']['speed'].toString()+' m/s';
    //wldn.winddirection = 'Wind Direction: '+(ldnlistdata['wind']['deg']).round().toString()+'°';
    //wldn.clouds = 'Clouds: '+ldnlistdata['clouds']['all'].toString()+'%';
    /*print(wldn.main);
    print(wldn.description);
    print(wldn.temp);
    print(wldn.humidity);
    print(wldn.windspeed);
    print(wldn.winddirection);
    print(wldn.clouds);*/
    var apiruh = glob.apikeys[rruh];
    //print (glob.currentapi.toString()+"THIS IS THE KEY NO.");
    var urlruh = 'http://api.openweathermap.org/data/2.5/weather?q=Riyadh,sa&APPID='+apiruh+'';
    var replyruh = await http.get(Uri.encodeFull(urlruh), headers: {"Accept": "application/json"});
    print (replyruh.body);
    final ruhinfo = replyruh.body;
    Map ruhlistdata = JSON.jsonDecode(ruhinfo);
    print (ruhlistdata);
    wruh.main = ruhlistdata['weather'][0]["main"];
    wruh.description = ruhlistdata['weather'][0]["description"];
    wruh.temp = (ruhlistdata['main']['temp']-273.15).round().toString()+'°C';
    //wruh.humidity = 'Humidity: '+ruhlistdata['main']['humidity'].toString()+'%';
    //wruh.windspeed = 'Wind Speed: '+ruhlistdata['wind']['speed'].toString()+' m/s';
    //wruh.winddirection = 'Wind Direction: '+(ruhlistdata['wind']['deg']).round().toString()+'°';
    //wruh.clouds = 'Clouds: '+ruhlistdata['clouds']['all'].toString()+'%';
    //-----------------------------------------------\
    var apiph = glob.apikeys[rph];
    //print (glob.currentapi.toString()+"THIS IS THE KEY NO.");
    var urlph = 'http://api.openweathermap.org/data/2.5/weather?id=1717639&APPID='+apiph+'';
    var replyph = await http.get(Uri.encodeFull(urlph), headers: {"Accept": "application/json"});
    print (replyph.body);
    final phinfo = replyph.body;
    Map phlistdata = JSON.jsonDecode(phinfo);
    print (ruhlistdata);
    wph.main = phlistdata['weather'][0]["main"];
    wph.description = phlistdata['weather'][0]["description"];
    wph.temp = (phlistdata['main']['temp']-273.15).round().toString()+'°C';
    //wph.humidity = 'Humidity: '+phlistdata['main']['humidity'].toString()+'%';
    //wph.windspeed = 'Wind Speed: '+phlistdata['wind']['speed'].toString()+' m/s';
    //wph.winddirection = 'Wind Direction: '+(phlistdata['wind']['deg']).round().toString()+'°';
    //wph.clouds = 'Clouds: '+phlistdata['clouds']['all'].toString()+'%';
    glob.load = 1;
  }

  static Future getUID() async {
    String udid = await FlutterUdid.consistentUdid;
    print (udid);
  }
  static Future getProfile() async {
    var timezoneoffset = DateTime.now().timeZoneOffset.toString();
    List<String> newlist = timezoneoffset.split(":");
    int offset = int.parse(newlist[0]);
    print (offset);
    if (offset == 1){
      offset = 2;
    }else if (offset == 8){
      offset = 1;
    }
    //+offset.toString()+
    //var url = 'http://www.louisxv.xyz:5010/ourtime/profile/'+offset.toString()+'';
    //var reply = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    //print (reply.body);
    //final body = reply.body;
    //List profilelist = JSON.jsonDecode(body);
    //print (profilelist);
    umoods.id = "1";
    umoods.name = "Louis";
    umoods.mood = "Happy";
    umoods.status = "Bored";
    umoods.sleep = "None";
    umoods.dream = "None";
  }

  static Future getOtherProfile() async {
    var timezoneoffset = DateTime.now().timeZoneOffset.toString();
    List<String> newlist = timezoneoffset.split(":");
    int offset = int.parse(newlist[0]);
    print (offset);
    if (offset == 1){
      offset = 1;
    }else if (offset == 8){
      offset = 2;
    }
    //+offset.toString()+
    var url = 'http://www.louisxv.xyz:5010/ourtime/profile/'+offset.toString()+'';
    var reply = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    //print (reply.body);
    final body = reply.body;
    List profilelist = JSON.jsonDecode(body);
    print (profilelist);
    omoods.id = profilelist[0].toString();
    omoods.name = profilelist[1];
    omoods.mood = profilelist[2];
    omoods.status = profilelist[3];
    omoods.sleep = profilelist[4];
    omoods.dream = profilelist[5];
  }


  static Future updateMood() async{
    var url = 'http://www.louisxv.xyz:5010/ourtime/profile/update/'+umoods.id+'/mood/'+umoods.mood+'';
    var reply = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
  }

  static Future updateStatus() async{
    var url = 'http://www.louisxv.xyz:5010/ourtime/profile/update/'+umoods.id+'/status/'+umoods.status+'';
    var reply = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
  }

  static Future updateSleep() async{
    var url = 'http://www.louisxv.xyz:5010/ourtime/profile/update/'+umoods.id+'/sleep/'+umoods.sleep+'';
    var reply = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
  }

  static Future updateDream() async{
    var url = 'http://www.louisxv.xyz:5010/ourtime/profile/update/'+umoods.id+'/dream/'+umoods.dream+'';
    var reply = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
  }



}