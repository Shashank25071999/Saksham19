import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutState();
  }
}

class AboutState extends State<About>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
              title: Text('About Us',style:TextStyle(color:Colors.black),),
              
            ),
          ),
          SliverFixedExtentList(itemExtent: 1750,
            delegate: SliverChildListDelegate([
             SingleChildScrollView(
               child: Column(mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                  SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: Container(
                        child: Text(
                          "Inter Departmental Sports Events are back, and it promises to be bigger and more extravagant than ever! The annualintra college sports meet, spanning accross several days commences with the Opening Ceremony and would comprise competitive events across 15 disciplines namely Cricket, Football, Basketball, Kabaddi, Table Tennis, Athletics, Badminton, Powerlifting, Carrom, Chess, Tug of War, Pool, Kho Kho, Volleyball and Obstacle Race. The wide assortment of indoor and outdoor events that Sports Meet to showcase their talents in various sports and instils the message to rise above our limits and achieve the improbable. It includes the feeling of righteousness, prudence and brotherhood and reinstates the fact that Ajay Kumar Garg Engineering College shapes up its students to achieve excellence in all spheres of life. So the seven contigents CSE, IT, EC, ME,EN, CE+EI and MBA+MCA are all ready in this rip-roaring competition to achieve the final victory. Are you?",
                          textAlign: TextAlign.center,
                          style: TextStyle(color:Colors.grey),
                        
                        ),
                      ),
                    ),
                     SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:18.0),
                      child: Text(
                        'Organising Committee',
                        textAlign:TextAlign.start,
                        style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22),
                      ),
                    ),
                     SizedBox(
                      height: 30,
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                      Padding(padding: EdgeInsets.all(5),
                      child: Card(
                        elevation: 5,
                          shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                          children: <Widget>[
                            Image.asset("assets/chess.png",
                            height: 160,
                            width: 160,
                            fit: BoxFit.fill,),

                             Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Prof V.K. Parashar",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      "Dean Student Welfare",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ))))
                          ],
                        ),
                      ),),
                       Padding(padding: EdgeInsets.all(5),
                      child: Card(
                        elevation: 5,
                          shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                          children: <Widget>[
                            Image.asset("assets/chess.png",
                            height: 160,
                            width: 160,
                            fit: BoxFit.fill,),

                             Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Prof V.K. Parashar",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      "Dean Student Welfare",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ))))
                          ],
                        ),
                      ),)
                    ]),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                      Padding(padding: EdgeInsets.all(5),
                      child: Card(
                        elevation: 5,
                          shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                          children: <Widget>[
                            Image.asset("assets/chess.png",
                            height: 160,
                            width: 160,
                            fit: BoxFit.fill,),

                             Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Prof V.K. Parashar",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      "Dean Student Welfare",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ))))
                          ],
                        ),
                      ),),
                       Padding(padding: EdgeInsets.all(5),
                      child: Card(
                        elevation: 5,
                          shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                          children: <Widget>[
                            Image.asset("assets/chess.png",
                            height: 160,
                            width: 160,
                            fit: BoxFit.fill,),

                             Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Prof V.K. Parashar",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      "Dean Student Welfare",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ))))
                          ],
                        ),
                      ),)
                    ]),
                    Row(children:[
                      Padding(
                        padding: EdgeInsets.only(top:5,left: 17),
                      child: Card(
                        elevation: 5,
                          shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                          children: <Widget>[
                            Image.asset("assets/chess.png",
                            height: 160,
                            width: 160,
                            fit: BoxFit.fill,),

                             Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Prof V.K. Parashar",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      "Dean Student Welfare",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ))))
                          ],
                        ),
                      ),)
                    ],mainAxisAlignment: MainAxisAlignment.start,),
                                         SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:18.0),
                      child: Text(
                        'Developer Team',
                        textAlign:TextAlign.start,
                        style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22),
                      ),
                    ),
                     SizedBox(
                      height: 30,
                    ),

                    
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                      Padding(padding: EdgeInsets.all(5),
                      child: Card(
                        elevation: 5,
                          shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                          children: <Widget>[
                            Image.asset("assets/chess.png",
                            height: 160,
                            width: 160,
                            fit: BoxFit.fill,),

                             Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Prof V.K. Parashar",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      "Dean Student Welfare",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ))))
                          ],
                        ),
                      ),),
                       Padding(padding: EdgeInsets.all(5),
                      child: Card(
                        elevation: 5,
                          shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                          children: <Widget>[
                            Image.asset("assets/chess.png",
                            height: 160,
                            width: 160,
                            fit: BoxFit.fill,),

                             Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Prof V.K. Parashar",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      "Dean Student Welfare",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ))))
                          ],
                        ),
                      ),)
                    ]),

                    
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                      Padding(padding: EdgeInsets.all(5),
                      child: Card(
                        elevation: 5,
                          shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                          children: <Widget>[
                            Image.asset("assets/chess.png",
                            height: 160,
                            width: 160,
                            fit: BoxFit.fill,),

                             Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Prof V.K. Parashar",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      "Dean Student Welfare",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ))))
                          ],
                        ),
                      ),),
                       Padding(padding: EdgeInsets.all(5),
                      child: Card(
                        elevation: 5,
                          shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          
                          children: <Widget>[
                            Image.asset("assets/chess.png",
                            height: 160,
                            width: 160,
                            fit: BoxFit.fill,),

                             Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20)),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    "Prof V.K. Parashar",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                      "Dean Student Welfare",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ))))
                          ],
                        ),
                      ),)
                    ]),
               ],)
               // Padding(padding: EdgeInsets.all(12.0),child: Text("You are"
             )
            ]))
        ],
      )
    );
  }
}