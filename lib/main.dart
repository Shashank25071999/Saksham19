import 'package:flutter/material.dart';
import 'package:saksham19/about.dart';
import 'package:saksham19/news.dart';
import './registration.dart';
import './home.dart';
import './schedule.dart';
import './delete.dart';

void main()
{
  runApp(MaterialApp(home: NavigationBar(),));
}

class NavigationBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    
    return NavigationBarState();
  }
}

class NavigationBarState extends State<NavigationBar>{

  List<Widget> pages=[News(),Schedule(),Home(),Register(),About()];
  var index=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:pages[index],
      
      bottomNavigationBar:BottomNavigationBar(
        currentIndex:index,
        onTap:onTabTapped ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases,color: Colors.black),
            title: Text('News',style: TextStyle(color:Colors.black)),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black),
            title: Text('Schedule',style: TextStyle(color:Colors.black),),
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            title: Text('Home',style: TextStyle(color:Colors.black)),
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box,color: Colors.black),
            title: Text('Register',style: TextStyle(color:Colors.black)),
          ),
          
         
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black),
              title: Text('About Us',style: TextStyle(color:Colors.black))
          )
        ],) ,
    );
  }

  void onTabTapped(int newindex) {
    setState(() {
      index= newindex;
    });
  }
}
