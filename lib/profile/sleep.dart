import 'package:flutter/material.dart';
import '../main.dart';
import '../httprequests.dart';
import '../viewa.dart';
class SleepSelect extends StatefulWidget {
  SleepSelect({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SleepSelect createState() => _SleepSelect();
}

class _SleepSelect extends State<SleepSelect> {

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
                        new Text('Choose Sleep',textAlign: TextAlign.left, style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),

                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.sleep = 'V.GOOD';
                              await API.updateSleep();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('V.GOOD',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            ))
                        ),
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.sleep = 'V.BAD';
                              await API.updateSleep();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('V.BAD',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
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
                              umoods.sleep = 'MEH';
                              await API.updateSleep();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('MEH',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            ))
                        ),
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.sleep = 'OK';
                              await API.updateSleep();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('OK',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
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
                              umoods.sleep = "DIDN'T";
                              await API.updateSleep();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text("DIDN'T",textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            ))
                        ),
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.sleep = 'BAD';
                              await API.updateSleep();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('BAD',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            )
                        ))
                      ],),

                    new GestureDetector(
                        onTap: () async{
                          umoods.sleep = 'SWEATY';
                          await API.updateSleep();
                          Navigator.of(context).pop();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                        },
                        child: Card(
                          color: Color(0xff81ecec),
                          child: new Text('SWEATY',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                        )
                    )


                  ],
                )),
          )),
    );
  }

}