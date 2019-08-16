import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterState();
  }
}

GlobalKey<FormState> formkey = GlobalKey<FormState>();

class RegisterState extends State {
  int selectedvalue;
  int hdselectedvalue;
  var branchSelectedItem = 'CS';
  var yearSelectedItem = '1';

  var branchitems = ['CS', 'IT', 'EC', 'ME', 'EN', 'CE/EI', 'MCA/MBA'];
  var yearItems = ['1', '2', '3', '4'];
  bool athletics = false;
  bool chess = false;
  bool badminton = false;
  bool vollyBall = false;
  bool carrom = false;
  bool tableTennis = false;
  bool basketBall = false;
  bool tugOfWar = false;
  bool khokho = false;
  bool cricket = false;
  bool kabaddi = false;
  bool powerlife = false;
  bool football = false;
  bool pool = false;
  bool obstacle = false;

  @override
  void initState() {
    selectedvalue = 0;
    hdselectedvalue = 0;
    // TODO: implement initState
    super.initState();
  }

  void selectedvaluefunction(int val) {
    setState(() {
      selectedvalue = val;
    });
  }

  void hdselectedfunction(int val) {
    print(val);
    setState(() {
      hdselectedvalue = val;
    });
  }

  // Widget checkBox(String title, bool selectedvalue) {
  //   return Row(
  //     children: <Widget>[
  //       Checkbox(
  //         value: selectedvalue,

  //         onChanged: (bool val) {
  //           print(val);
  //           print("sha $chess");
  //           setState(() {
  //           selectedvalue = val;
  //           });

  //         },
  //         checkColor: Colors.black,

  //       ),
  //       Text(title)
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            floating: true,
           
            flexibleSpace: FlexibleSpaceBar(
               centerTitle: true,
              title: Text('Registration'),
              background: Image.asset(
                "assets/ball.jpg", // <===   Add your own image to assets or use a .network image instead.
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(itemExtent: 1000,
            delegate: SliverChildListDelegate([
             Form(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Name cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Student No",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Student No cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Radio(
                            value: 0,
                            groupValue: selectedvalue,
                            onChanged: (val) {
                              selectedvaluefunction(val);
                            },
                          ),
                          Text("Female")
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: selectedvalue,
                            onChanged: (val) {
                              selectedvaluefunction(val);
                            },
                          ),
                          Text("Male")
                        ],
                      ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Contact No",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Contact No cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Branch:"),
                        ),
                        Expanded(
                          child: DropdownButton<String>(
                            items: branchitems.map((String dropDownStringItem) {
                              return DropdownMenuItem(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String userSelectedItem) {
                              setState(() {
                                branchSelectedItem = userSelectedItem;
                              });
                            },
                            value: branchSelectedItem,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Year:"),
                        ),
                        Expanded(
                          child: DropdownButton<String>(
                            items: yearItems.map((String dropDownStringItem) {
                              return DropdownMenuItem(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String userSelectedItem) {
                              setState(() {
                                yearSelectedItem = userSelectedItem;
                              });
                            },
                            value: yearSelectedItem,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Radio(
                            value: 0,
                            groupValue: hdselectedvalue,
                            onChanged: (val) {
                              hdselectedfunction(val);
                            },
                          ),
                          Text("Hostler")
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: hdselectedvalue,
                            onChanged: (val) {
                              hdselectedfunction(val);
                            },
                          ),
                          Text("DaySchoolar")
                        ],
                      ))
                    ],
                  ),
                  // Row(children: <Widget>[
                  //   Expanded(child: checkBox("Athletics", athletics),),
                  //    Expanded(child: checkBox("Chess", chess),),
                  //     Expanded(child: checkBox("Badminton", badminton),),

                  // ],)

                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: athletics,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            athletics = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Athletees"),
                      ),
                      Checkbox(
                        value: chess,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            chess = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Chess"),
                      ),
                      Checkbox(
                        value: badminton,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            badminton = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Badminton"),
                      ),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: basketBall,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            basketBall = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("BasketBall"),
                      ),
                      Checkbox(
                        value: khokho,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            khokho = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("khokho"),
                      ),
                      Checkbox(
                        value: vollyBall,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            vollyBall = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("VollyBall"),
                      ),
                    ],
                  ),
//sdskfhdshfdffsdfkfjafkj

                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: carrom,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            carrom = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Carrom"),
                      ),
                      Checkbox(
                        value: tableTennis,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            tableTennis = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Table Tennis"),
                      ),
                      Checkbox(
                        value: tugOfWar,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            tugOfWar = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("TugOfWar"),
                      ),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: cricket,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            cricket = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Cricket"),
                      ),
                      Checkbox(
                        value: kabaddi,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            kabaddi = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Kabaddi"),
                      ),
                      Checkbox(
                        value: obstacle,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            obstacle = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Obstacle"),
                      ),
                    ],
                  ),
                  //sjgafjb

                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: pool,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            pool = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Pool"),
                      ),
                      Checkbox(
                        value: football,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            football = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Football"),
                      ),
                      Checkbox(
                        value: powerlife,
                        onChanged: (bool val) {
                          setState(() {
                            print(val);
                            powerlife = val;
                          });
                        },
                      ),
                      Expanded(
                        child: Text("Power lifting"),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0,),
                  //RegisterButton
                  RaisedButton(
                    onPressed: () {
                      print("Shashank Sahai registered");
                    },
                    elevation: 20.0,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(80.0))),
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: const Text('Register Your Self',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  SizedBox(height: 20.0,)
                ],
              ),

              // Padding(padding: EdgeInsets.all(12.0),child: Text("You are"
            ),)
            ]))
        ],
      ),
    );
  }
}
