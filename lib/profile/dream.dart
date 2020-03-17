import 'package:flutter/material.dart';
import '../main.dart';
import '../httprequests.dart';
import '../viewa.dart';
class DreamSelect extends StatefulWidget {
  DreamSelect({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DreamSelect createState() => _DreamSelect();
}

class _DreamSelect extends State<DreamSelect> {

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
                        new Text('Choose Dream',textAlign: TextAlign.left, style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7)))),

                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.dream = 'V.GOOD';
                              await API.updateDream();
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
                              umoods.dream = 'V.BAD';
                              await API.updateDream();
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
                              umoods.dream = 'MEH';
                              await API.updateDream();
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
                              umoods.dream = 'FUN';
                              await API.updateDream();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('FUN',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
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
                              umoods.dream = "NONE";
                              await API.updateDream();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text("NONE",textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            ))
                        ),
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.dream = 'BAD';
                              await API.updateDream();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('BAD',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
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
                              umoods.dream = "SEXY";
                              await API.updateDream();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text("SEXY",textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            ))
                        ),
                        new Expanded(child:
                        new GestureDetector(
                            onTap: () async{
                              umoods.dream = 'WET';
                              await API.updateDream();
                              Navigator.of(context).pop();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                            },
                            child: Card(
                              color: Color(0xff81ecec),
                              child: new Text('WET',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                            )
                        ))
                      ],),

                    new GestureDetector(
                        onTap: () async{
                          umoods.dream = 'NIGHTMARE';
                          await API.updateDream();
                          Navigator.of(context).pop();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Viewa()));
                        },
                        child: Card(
                          color: Color(0xff81ecec),
                          child: new Text('NIGHTMARE',textAlign: TextAlign.center,style: new TextStyle(fontSize: 70, fontFamily: 'Bebas', fontWeight: FontWeight.w500, color: Color(0xffffeaa7))),
                        )
                    )


                  ],
                )),
          )),
    );
  }

}