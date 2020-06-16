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
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 85,
              pinned: true,
              floating: true,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 20, bottom: 10, top: 20),
                title: Text(
                  'Schedule',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SliverFixedExtentList(
                itemExtent: 850,
                delegate: SliverChildListDelegate([
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                 showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Cricket',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/crciket.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Football',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/football.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Vollyball',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/basketball.png"),
                            ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Cricket",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Football",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Vollyball",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Kabaddi',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/kabaddi.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Tabble Tennis',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/table tennis.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Athletics',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/athletics.png"),
                            ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Kabbadi",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Table Tennis",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Athletics",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Badminton',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/badminton.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Powerlifting',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/powerlifting.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                    showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Carrom',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/carrom.png"),
                            ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Badminton",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Powerlifting",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Carrom",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Chess',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/chess.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Tug Of War',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/tug.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Pool',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/pool.png"),
                            ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Chess",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Tug Of War",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Pool",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Kho Kho',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/kho kho.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Vollyball',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/volleyball.png"),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                      showModalBottomSheet(
                                   backgroundColor: Colors.white,
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.white,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Obstacle Race',
                                      style: TextStyle(fontSize: 20,color:Colors.deepPurpleAccent[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: TextStyle(fontSize: 15,color:Colors.black))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: TextStyle(color:Colors.black)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: TextStyle(color:Colors.grey)
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                              },
                              child: Image.asset("assets/hurdles.png"),
                            ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                "Kho Kho",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Vollyball",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Obstacle Race",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                      ],
                    ),
                    // Padding(padding: EdgeInsets.all(12.0),child: Text("You are"
                  )
                ]))
          ],
        ));
  }
}
