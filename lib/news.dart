import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsState();
  }
}

class NewsState extends State<News>{
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
              title: Text('News',style:TextStyle(color:Colors.black),),
              
            ),
          ),
          SliverFixedExtentList(itemExtent: 1750,
            delegate: SliverChildListDelegate([
             SingleChildScrollView(
               child: Column(mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                                ],)
               // Padding(padding: EdgeInsets.all(12.0),child: Text("You are"
             )
            ]))
        ],
      )
    );
  }
}





