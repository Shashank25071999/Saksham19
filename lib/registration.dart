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
  
 bool male = true;
  bool female = false;
  bool hostel = true;
  bool day = false;
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
  var branchSelectedItem = 'CS';
  var yearSelectedItem = '1';
  var yearItems = ['1', '2', '3', '4'];
  var branchitems = ['CS', 'IT', 'EC', 'ME', 'EN', 'CE/EI', 'MCA/MBA'];
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
      backgroundColor:Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 85,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left:20,bottom:10,top: 20),
              title: Text('Register',style:TextStyle(color:Colors.black),),
              
            ),
          ),
          SliverFixedExtentList(
              itemExtent: 850,
              delegate: SliverChildListDelegate([
                Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, right: 20, left: 20),
                          child: TextFormField(
                            cursorColor: Color.fromRGBO(0, 11, 135, 0.8),
                            decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle:
                                  TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color:Color.fromRGBO(0, 11, 135, 0.8), width: 2),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color.fromRGBO(0, 11, 135, 0.8), width: 2),
                              ),
                            ),
                            validator: (val) {
                              if (val.length == 0) {
                                return "Name is required";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),

                         
                        Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, right: 20, left: 20),
                          child: TextFormField(
                            cursorColor: Color.fromRGBO(0, 11, 135, 0.8),
                            decoration: InputDecoration(
                              hintText: 'Student No',
                              hintStyle:
                                  TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color:Color.fromRGBO(0, 11, 135, 0.8), width: 2),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color.fromRGBO(0, 11, 135, 0.8), width: 2),
                              ),
                            ),
                            validator: (val) {
                              if (val.length == 0) {
                                return "Student No is required";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),

                           Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      child: Container(
                        height: 50,
                        width: 160,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              male = true;
                              female = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: male ? Colors.black : Color.fromRGBO(0, 11, 135, 0.8),
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              color: male ? Color.fromRGBO(0, 11, 135, 0.8) : Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "Male",
                                    style: TextStyle(color: male?Colors.white:Colors.black)
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(10)),
                  Padding(
                    child: Container(
                      height: 50,
                      width: 160,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            female = true;
                            male = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: female ? Colors.black : Color.fromRGBO(0, 11, 135, 0.8),
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            color: female ? Color.fromRGBO(0, 11, 135, 0.8) : Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "Female",
                                  style:TextStyle(color:female? Colors.white:Colors.black)
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                  )
                ]),

                
                        Padding(
                          padding: EdgeInsets.only(
                             bottom: 10, right: 20, left: 20),
                          child: TextFormField(
                            cursorColor: Color.fromRGBO(0, 11, 135, 0.8),
                            decoration: InputDecoration(
                              hintText: 'Contact No',
                              hintStyle:
                                  TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color:Color.fromRGBO(0, 11, 135, 0.8), width: 2),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color.fromRGBO(0, 11, 135, 0.8), width: 2),
                              ),
                            ),
                            validator: (val) {
                              if (val.length == 0) {
                                return "Contact no is required";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),

                        SizedBox(height: 10),
            Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Branch:",
                      style: TextStyle(color:Colors.black)
                    ),
                  ),
                  Expanded(
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Colors.white,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          elevation: 8,
                          style: TextStyle(color:Colors.black),
                          items: branchitems.map((String dropDownStringItem) {
                            return DropdownMenuItem(
                              value: dropDownStringItem,
                              child: Text(
                                dropDownStringItem,
                                style: TextStyle(color:Colors.black)
                              ),
                            );
                          }).toList(),
                          onChanged: (String userSelectedItem) {
                            setState(() {
                              branchSelectedItem = userSelectedItem;
                            });
                          },
                          value: branchSelectedItem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Padding(
              padding:
                  EdgeInsets.only( bottom: 10, right: 20, left: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Year:",
                      style: TextStyle(color:Colors.black)
                    ),
                  ),
                  Expanded(
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Colors.white,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          elevation: 8,
                          style: TextStyle(color:Colors.black),
                          items: yearItems.map((String dropDownStringItem) {
                            return DropdownMenuItem(
                              value: dropDownStringItem,
                              child: Text(
                                dropDownStringItem,
                                style: TextStyle(color:Colors.black)
                              ),
                            );
                          }).toList(),
                          onChanged: (String userSelectedItem) {
                            setState(() {
                              yearSelectedItem = userSelectedItem;
                            });
                          },
                          value: yearSelectedItem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            
                           Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      child: Container(
                        height: 50,
                        width: 160,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              hostel = true;
                              day = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: hostel ? Colors.black : Color.fromRGBO(0, 11, 135, 0.8),
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              color: hostel ? Color.fromRGBO(0, 11, 135, 0.8) : Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    "Hosteler",
                                    style: TextStyle(color: hostel?Colors.white:Colors.black)
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(left:10,right: 10,bottom: 10)),
                  Padding(
                    child: Container(
                      height: 50,
                      width: 160,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            day = true;
                            hostel = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: day ? Colors.black : Color.fromRGBO(0, 11, 135, 0.8),
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            color: day ? Color.fromRGBO(0, 11, 135, 0.8) : Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  "Day Scholar",
                                  style:TextStyle(color:day? Colors.white:Colors.black)
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(left:10,right: 10,bottom: 10)
                  )
                ]),

                
                        Row(
                          children: <Widget>[
                            Checkbox(
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                              activeColor:Color.fromRGBO(0, 11, 135, 0.8),
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
                        SizedBox(
                          height: 25.0,
                        ),
                        //RegisterButton
                                
            Container(
              height:50,
              width: 365,
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    
                    color: Color.fromRGBO(0, 11, 135, 0.8),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Register",
                          style:TextStyle(color:Colors.white)
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
                        SizedBox(
                          height: 20.0,
                        )
                      ],
                    ),

                    // Padding(padding: EdgeInsets.all(12.0),child: Text("You are"
                  ),
                )
              ]))
        ],
      ),
    );
  }
}
