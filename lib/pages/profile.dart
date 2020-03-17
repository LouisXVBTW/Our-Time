import 'package:flutter/material.dart';
import '../main.dart';
import '../profile/mood.dart';
import '../profile/sleep.dart';
import '../profile/dream.dart';
import '../profile/status.dart';
import 'otherprofile.dart';
import '../httprequests.dart';
class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  String _usermood = "Good";
  String _usersleep = "V.Good";
  String _userdream = "Nice";
  String _userstatus = "Bored";
  String _othername = "IDK";

  @override
  Widget build(BuildContext context) {
    var timezoneoffset = DateTime.now().timeZoneOffset.toString();
    List<String> newlist = timezoneoffset.split(":");
    int offset = int.parse(newlist[0]);
    //glob.killt = 1;
    if (offset == 1){
      umoods.name = 'Louis';
    }else if(offset == 8){
      umoods.name = 'Soulene';
    }
    if (umoods.name == 'Louis'){
      _othername = "View Other's Profile";
    }else if(umoods.name == 'Soulene'){
      _othername = "View Louis' Profile";
    }
    // TODO: implement build
    return Scaffold(
      body: new Container(
          color: Color(0xff74b9ff),
          child: new ListView(
            children: <Widget>[
              new Container(
                //color: Color(0xff74b9ff),
                child: new Column(
                  children: <Widget>[

                    new Container(
                        width: 125.0,
                        height: 125.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                            image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage('assets/images/avatars/'+umoods.name+'.jpg'),

                            )
                        )
                    ),
                    new Text(umoods.name,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),

                  ],

                ),

              ),
              new GestureDetector(
                  onLongPress: ()async{
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MoodSelect()));
                    //umoods.mood = 'works';
                  },
                  child:
                  new Container(

                    height: 100,
                    //padding: EdgeInsets.only(left: 7),
                    child: Card(

                        color: Color(0xff81ecec),
                        child: Row(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Expanded(child: Text('Mood:',textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),
                            new Expanded(child: Text(_usermood,textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),
                          ],
                        )),

                  )

              ),
              new GestureDetector(
                  onLongPress: ()async{
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> StatusSelect()));
                    //umoods.mood = 'works';
                  },
                  child:
                  new Container(

                    height: 100,
                    //padding: EdgeInsets.only(left: 7),
                    child: Card(

                        color: Color(0xff81ecec),
                        child: Row(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Expanded(child: Text('Status:',textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),
                            new Expanded(child: Text(_userstatus,textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),
                          ],
                        )),

                  )

              ),
              new GestureDetector(
                  onLongPress: ()async{
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SleepSelect()));
                    //umoods.mood = 'works';
                  },
                  child:
                  new Container(

                    height: 100,
                    //padding: EdgeInsets.only(left: 7),
                    child: Card(

                        color: Color(0xff81ecec),
                        child: Row(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Expanded(child: Text('Sleep:',textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),
                            new Expanded(child: Text(_usersleep,textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),
                          ],
                        )),

                  )

              ),
              new GestureDetector(
                  onLongPress: ()async{
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DreamSelect()));
                    //umoods.mood = 'works';
                  },
                  child:
                  new Container(

                    height: 100,
                    //padding: EdgeInsets.only(left: 7),
                    child: Card(

                        color: Color(0xff81ecec),
                        child: Row(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Expanded(child: Text('Dream:',textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),
                            new Expanded(child: Text(_userdream,textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),
                          ],
                        )),

                  )

              ),

              new GestureDetector(
                  onTap: ()async{
                    //await API.getOtherProfile();
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> OtherProfilePage()));
                    //umoods.mood = 'works';
                  },
                  child:
                  new Container(

                    height: 60,
                    //padding: EdgeInsets.only(left: 7),
                    child: Card(

                        color: Color(0xFFFFB500),
                        child: Text(_othername,textAlign: TextAlign.center,style: new TextStyle(fontSize: 35, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFF93800)))
                  ))
              ),
              //new Text('Mood:',textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),





            ],

          )
      ));

  }
}