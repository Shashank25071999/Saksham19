import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:simple_animations/simple_animations.dart';
//import 'package:charts_flutter/flutter.dart';
//  import './delete.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  
    return HomeState();
  }
}

class HomeState extends State<Home> {

  List<charts.Series<Task,String>> _seriesPieData;
generatedata(){
  var piedata=[
    Task('CS',32,Color(0xff3366cc)),
    Task('It',22,Color(0xff990099)),
    Task('ME',9,Color(0xff109618)),
    Task('EN',10,Color(0xff990099)),
    Task('MCA',27,Color(0xff990099))

  ];
  _seriesPieData.add(
    charts.Series(
      data:piedata,
      domainFn:(Task task,_)=>task.branch,
      measureFn:(Task task,_)=>task.branchvalue,
      colorFn:(Task task,_)=>charts.ColorUtil.fromDartColor(task.colorvalue),
      id: "Prediction",
      labelAccessorFn: (Task row,_)=>'${row.branchvalue}'
    )
  );
}
void initState(){
  super.initState();

  _seriesPieData=List<charts.Series<Task,String>>();
  generatedata();
}
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 10),
          ColorTween(begin: Color(0xffD38312), end: Colors.lightBlue.shade900)),
      Track("color2").add(Duration(seconds: 10),
          ColorTween(begin: Colors.indigo.shade100, end: Colors.blue.shade300)),
      Track("color3").add(Duration(seconds: 10),
          ColorTween(begin: Color(0xffD38375), end: Colors.green.shade300)),
      Track("color4").add(Duration(seconds: 10),
          ColorTween(begin: Color(0xffD38375), end: Colors.indigo.shade300)),
    ]);

    return ControlledAnimation(
      playback: Playback.MIRROR,
      tween: tween,
      duration: tween.duration,
      builder: (context, animation) {
        return 

Scaffold(
      backgroundColor: Colors.white,
      body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 85,
            pinned: true,
            floating: true,
           backgroundColor:Colors.white,
            flexibleSpace: FlexibleSpaceBar(
               titlePadding: EdgeInsets.only(left:20,bottom:10,top: 20),
              title: Text("Saksham'19",style:TextStyle(color:Colors.black),),
              
            ),
          ),
          SliverFixedExtentList(itemExtent: 1750,
            delegate: SliverChildListDelegate([
            
 SingleChildScrollView(
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child:ClipPath(clipper: ClipperClass(),
                            child: Container(
                            height: 300.0,
                            child: Image.asset("assets/back.png"),
                            decoration: BoxDecoration(
                                // borderRadius: BorderRadius.only(
                                //     bottomRight: Radius.elliptical(100, 100)
                                //     //,bottomLeft: Radius.elliptical(100, 100)
                                //     ),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      animation["color1"],
                                      animation["color2"],
                                      animation['color3'],
                                      animation['color4']
                                    ])),
                          ),)
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Text("2018's Medal Tally",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Card(
                            elevation: 8.0,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        "Team",
                                        textAlign: TextAlign.center,
                                      ),
                                      flex: 2,
                                    ),
                                    Expanded(
                                      child: Image.asset("assets/silver2.png",height:40),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Image.asset("assets/silver.png",height:40),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Image.asset("assets/bronze2.png",height:40),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Text("Total",
                                          textAlign: TextAlign.center),
                                      flex: 2,
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                Container(
                                  height: 250.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Expanded(
                                        child: FlatButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      actions: <Widget>[
                                                       Padding(padding: EdgeInsets.only(right: 85.0,bottom: 45.0),child:Container(width: 110.0,height: 50.0,child: FlatButton(
                                                          
                                                          shape: StadiumBorder(),
                                                          color:Color.fromRGBO(0, 11, 135, 0.8),
                                                          onPressed: () {
                                                            Navigator.of(context).pop();
                                                          },
                                                          child: Text("Close",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                        )))
                                                      ],
                                                      title: Text(
                                                        "2016",style: TextStyle(color:Color.fromRGBO(0, 11, 135, 0.8)),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      content:
                                                           Container(
                                                             child: ListView(children: <Widget>[
                                                               Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("Team",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child: Image.asset("assets/silver2.png",height:40),),
                                                                 Expanded(flex: 2,child:Image.asset("assets/silver.png",height:40),),
                                                                 Expanded(flex: 2,child: Image.asset("assets/bronze2.png",height:40),),
                                                                 Expanded(flex: 3,
                                                                 child: Text("Total",textAlign: TextAlign.center,),)
                                                               ],),
                                                               Divider(color: Colors.black26,),
                                                               SizedBox(height: 10.0,),
                                                               Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("CS",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("12",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("8",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("4",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("92",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                               SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("IT",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("10",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("6",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("2",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("69",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("EC",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("6",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("9",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("6",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("59",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("ME",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("8",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("10",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("5",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("87",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("EN",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("3",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("8",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("3",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("63",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("EI/CE",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("7",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("5",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("2",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("51",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("MBA/MCA",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("1",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("0",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("4",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("7",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                             ],),
                                                             
                                                          height: 300,
                                                          width: 500,
                                                        ),
                                                      
                                                    );
                                                  });
                                            },
                                            child: Text("2016",style: TextStyle(color:Colors.white),),
                                            hoverColor: Colors.pink,
                                            color: Color.fromRGBO(0, 11, 135, 1),
                                            shape: StadiumBorder())),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Expanded(
                                        child: FlatButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      actions: <Widget>[
                                                       Padding(padding: EdgeInsets.only(right: 85.0,bottom: 45.0),child:Container(width: 110.0,height: 50.0,child: FlatButton(
                                                          
                                                          shape: StadiumBorder(),
                                                          color: Color.fromRGBO(0, 11, 135, 0.8),
                                                          onPressed: () {
                                                            Navigator.of(context).pop();
                                                          },
                                                          child: Text("Close",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                        )))
                                                      ],
                                                      title: Text(
                                                        "2017",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      content:
                                                           Container(
                                                             child: ListView(children: <Widget>[
                                                               Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("Team",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child: Image.asset("assets/silver2.png",height:40),),
                                                                 Expanded(flex: 2,child:Image.asset("assets/silver.png",height:40),),
                                                                 Expanded(flex: 2,child: Image.asset("assets/bronze2.png",height:40),),
                                                                 Expanded(flex: 3,
                                                                 child: Text("Total",textAlign: TextAlign.center,),)
                                                               ],),
                                                               Divider(color: Colors.black26,),
                                                               SizedBox(height: 10.0,),
                                                               Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("CS",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("13",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("9",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("3",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("109",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                               SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("IT",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("9",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("11",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("5",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("90",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("EC",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("8",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("10",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("8",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("88",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("ME",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("12",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("10",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("9",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("106",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("EN",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("2",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("1",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("0",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("18",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("EI/CE",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("3",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("4",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("1",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("31",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("MBA/MCA",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("2",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("4",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("3",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("25",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                             ],),
                                                             
                                                          height: 300,
                                                          width: 500,
                                                        ),
                                                      
                                                    );
                                                  });
                                            },
                                            child: Text("2017",style: TextStyle(color:Colors.white),),
                                            hoverColor: Colors.black,
                                            focusColor: Colors.green,
                                            highlightColor: Colors.amber,
                                            color: Color.fromRGBO(0, 11, 135, 1),
                                            shape: StadiumBorder())),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Expanded(
                                        child: FlatButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      actions: <Widget>[
                                                       Padding(padding: EdgeInsets.only(right: 85.0,bottom: 20.0),child:Container(width: 110.0,height: 50.0,child: FlatButton(
                                                          
                                                          shape: StadiumBorder(),
                                                          color: Color.fromRGBO(0, 11, 135, 0.8),
                                                          onPressed: () {
                                                            Navigator.of(context).pop();
                                                          },
                                                          child: Text("Close",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                        )))
                                                      ],
                                                      title: Text(
                                                        "2018",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8),fontSize: 30),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      content:
                                                           Container(
                                                             child: ListView(children: <Widget>[
                                                               Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("Team",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child: Image.asset("assets/silver2.png",height:40),),
                                                                 Expanded(flex: 2,child:Image.asset("assets/silver.png",height:40),),
                                                                 Expanded(flex: 2,child: Image.asset("assets/bronze2.png",height:40),),
                                                                 Expanded(flex: 3,
                                                                 child: Text("Total",textAlign: TextAlign.center,),)
                                                               ],),
                                                               Divider(color: Colors.black26,),
                                                               SizedBox(height: 10.0,),
                                                               Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("CS",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("13",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("9",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("3",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("109",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                               SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("IT",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("9",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("11",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("5",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("90",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("EC",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("8",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("10",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("8",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("88",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("ME",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("12",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("10",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("9",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("106",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("EN",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("2",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("1",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("0",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("18",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("EI/CE",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("3",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("4",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("1",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("31",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                                SizedBox(height: 10.0,),
                                                                 Row(children: <Widget>[
                                                                 Expanded(flex: 3,
                                                                 child: Text("MBA/MCA",textAlign: TextAlign.center,),),
                                                                 Expanded(flex: 2,child:Text("2",textAlign: TextAlign.center,) ),
                                                                 Expanded(flex: 2,child:Text("4",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 2,child: Text("3",textAlign: TextAlign.center,)),
                                                                 Expanded(flex: 3,
                                                                 child: Text("25",style: TextStyle(color: Color.fromRGBO(0, 11, 135, 0.8)),textAlign: TextAlign.center,),)
                                                               ],),
                                                             ],),
                                                             
                                                          height: 300,
                                                          width: 500,
                                                        ),
                                                      
                                                    );
                                                  });
                                            },
                                            child: Text("2018",style: TextStyle(color:Colors.white),),
                                            hoverColor: Colors.pink,
                                            color: Color.fromRGBO(0, 11, 135, 1),
                                            shape: StadiumBorder())),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                   Padding(padding: EdgeInsets.only(top: 20.0),child: Text("Who Will Be The Champion?")),

                   

                                      ]),
                ),
            ]))
        ],
      )
    );
      },
    );
  }
}

class ClipperClass extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path =Path();
    path.lineTo(0.0, size.height-40);
     path.quadraticBezierTo(size.width / 4, size.height,
        size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
   @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
//data container
class Task{
  String branch;
  double branchvalue;
  Color colorvalue;
  Task(this.branch,this.branchvalue,this.colorvalue);
}
