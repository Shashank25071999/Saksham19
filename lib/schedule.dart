import "package:flutter/material.dart";

class Schedule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ScheduleState();
  }
}

class ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              //   leading: Image.asset("assets/playstore.png"),
              backgroundColor: Colors.white,
              expandedHeight: 80,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(left: 8.0, bottom: 10.0),
                  // centerTitle: true,
                  title: Text(
                    'Schedule',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  background: Container())),
          SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/crciket.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/football.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/basketball.png")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(child: Text("Cricket",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Football",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Vollyball",textAlign: TextAlign.center,),)
                  ],),
                  SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/kabaddi.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/table tennis.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/athletics.png")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(child: Text("Kabbadi",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Table Tennis",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Athletics",textAlign: TextAlign.center,),)
                  ],),
                   SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/badminton.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/powerlifting.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/carrom.png")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(child: Text("Badminton",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Powerlifting",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Carrom",textAlign: TextAlign.center,),)
                  ],),
                  SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/chess.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/tug.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/pool.png")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(child: Text("Chess",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Tug Of War",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Pool",textAlign: TextAlign.center,),)
                  ],),
                   SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/kho kho.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/volleyball.png")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("Shashank");
                          },
                              child: Image.asset("assets/hurdles.png")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(child: Text("Kho Kho",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Vollyball",textAlign: TextAlign.center,),),
                    Expanded(child: Text("Obstacle Race",textAlign: TextAlign.center,),)
                  ],),
                  SizedBox(height: 12.0,),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
