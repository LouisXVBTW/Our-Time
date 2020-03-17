import 'package:flutter/material.dart';
import '../main.dart';
import '../profile/mood.dart';
import '../profile/sleep.dart';
import '../profile/dream.dart';
import '../profile/status.dart';
import '../viewa.dart';
class OtherProfilePage extends StatefulWidget {
  OtherProfilePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OtherProfilePage createState() => _OtherProfilePage();
}

class _OtherProfilePage extends State<OtherProfilePage> {
  String _usermood = "Happy";
  String _usersleep = "None";
  String _userdream = "None";
  String _userstatus = "Work";
  String _othername = "Soulene";
  @override
  Widget build(BuildContext context) {
    //glob.killt = 1;
    if (umoods.name == 'Louis'){
      _othername = "View Soulene's Profile";
    }else if(umoods.name == 'Soulene'){
      _othername = "View Louis' Profile";
    }
    // TODO: implement build
    return new WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
      },
      child: new Scaffold(
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
                                image: new AssetImage('assets/images/avatars/'+omoods.name+'.jpg'),

                              )
                          )
                      ),
                      new Text(omoods.name,textAlign: TextAlign.center,style: new TextStyle(fontSize: 50, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),

                    ],

                  ),

                ),

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
                          ),

                    )

                ),

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
                          ),

                    )

                ),

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
                          ),

                    )

                ),

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
                          ),

                    )

                ),

                new GestureDetector(
                    onTap: ()async{
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                      //umoods.mood = 'works';
                    },
                    child:
                    new Container(

                        height: 60,
                        //padding: EdgeInsets.only(left: 7),
                        child: Card(

                            color: Color(0xFFFFB500),
                            child: Text('Return',textAlign: TextAlign.center,style: new TextStyle(fontSize: 35, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xFFF93800)))
                        ))
                ),
                //new Text('Mood:',textAlign: TextAlign.left,style: new TextStyle(fontSize: 45, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),





              ],

            )
        )));

  }
}