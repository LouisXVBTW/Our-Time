import 'package:flutter/material.dart';
import '../main.dart';
import '../httprequests.dart';
import '../viewa.dart';
class StatusSelect extends StatefulWidget {
  StatusSelect({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StatusSelect createState() => _StatusSelect();
}

class _StatusSelect extends State<StatusSelect> {

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
                        new Text('Choose Status',textAlign: TextAlign.left, style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),

                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.status = 'AWAKE';
                              await API.updateStatus();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('AWAKE',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            ))
                        ),
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.status = 'ASLEEP';
                              await API.updateStatus();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('ASLEEP',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
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
                              umoods.status = 'OUT';
                              await API.updateStatus();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('OUT',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            ))
                        ),
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.status = 'EATING';
                              await API.updateStatus();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('EATING',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
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
                              umoods.status = 'AWAY';
                              await API.updateStatus();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('AWAY',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            ))
                        ),
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.status = 'DND';
                              await API.updateStatus();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('DND',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            )
                        ))
                      ],),


                  ],
                )),
          )),
    );
  }

}