import 'package:flutter/material.dart';
import '../main.dart';
import '../httprequests.dart';
import '../viewa.dart';
class MoodSelect extends StatefulWidget {
  MoodSelect({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MoodSelect createState() => _MoodSelect();
}

class _MoodSelect extends State<MoodSelect> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async{
        Navigator.of(context).pop();
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
      },
      child: new Scaffold(
      body: new Container(
        color: Color(0xff74b9ff),
        child: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(

              padding: EdgeInsets.only(bottom: 70.0),
                child:
            new Text('Choose Mood',textAlign: TextAlign.left, style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),

            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Expanded(child:
              new GestureDetector(
                onTap: () async{
                  umoods.mood = 'GIGIL';
                  await API.updateMood();
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                },
                child: Card(
                  color: Color(0xff81ecec),
                  child: new Text('GIGIL',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                ))
              ),
              new Expanded(child:
              new GestureDetector(
                  onTap: () async{
                    umoods.mood = 'KILIG';
                    await API.updateMood();
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                  },
                  child: Card(
                    color: Color(0xff81ecec),
                    child: new Text('KILIG',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                  ))
              )
            ],),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Expanded(child:
                new GestureDetector(
                    onTap: () async{
                      umoods.mood = 'HAPPY';
                      await API.updateMood();
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                    },
                    child: Card(
                      color: Color(0xff81ecec),
                      child: new Text('HAPPY',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                    ))
                ),
                new Expanded(child:
                new GestureDetector(
                    onTap: () async{
                      umoods.mood = 'MEH';
                      await API.updateMood();
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                    },
                    child: Card(
                      color: Color(0xff81ecec),
                      child: new Text('MEH',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                    ))
                )
              ],),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Expanded(child:
                new GestureDetector(
                    onTap: () async{
                      umoods.mood = 'SAD';
                      await API.updateMood();
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                    },
                    child: Card(
                      color: Color(0xff81ecec),
                      child: new Text('SAD',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                    ))
                ),
                new Expanded(child:
                new GestureDetector(
                    onTap: () async{
                      umoods.mood = 'HORNY';
                      await API.updateMood();
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                    },
                    child: Card(
                      color: Color(0xff81ecec),
                      child: new Text('HORNY',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                    )
                ))
              ],),
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Expanded(child:
                new GestureDetector(
                    onTap: () async{
                      umoods.mood = 'CRAZY';
                      await API.updateMood();
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                    },
                    child: Card(
                      color: Color(0xff81ecec),
                      child: new Text('CRAZY',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                    ))
                ),
                new Expanded(child:
                new GestureDetector(
                    onTap: () async{
                      umoods.mood = 'BORED';
                      await API.updateMood();
                      Navigator.of(context).pop();
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                    },
                    child: Card(
                      color: Color(0xff81ecec),
                      child: new Text('BORED',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                    )
                ))
              ],),

          ],
        )),
      )),
    );
  }

}