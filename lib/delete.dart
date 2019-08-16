import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Map extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MapState();
  }
}

class MapState extends State<Map>{
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
    // TODO: implement build
    return Scaffold(body:Container(child: 
                         Container(child: charts.PieChart(
                           _seriesPieData,
                           animate: true,
                           animationDuration: Duration(seconds: 10),
                           behaviors: [
                             charts.DatumLegend(
                               outsideJustification: charts.OutsideJustification.endDrawArea,
                               horizontalFirst: false,
                               desiredMaxRows: 2,
                               cellPadding: EdgeInsets.only(right: 4.0,bottom: 4.0),
                               entryTextStyle: charts.TextStyleSpec(color: charts.MaterialPalette.purple.shadeDefault,
                               fontFamily: 'Georgia',
                               fontSize: 11,
                             ),)
                           ],
                           defaultRenderer: charts.ArcRendererConfig(
                             arcWidth: 100,
                             arcRendererDecorators: [
                               charts.ArcLabelDecorator(
                                 labelPosition: charts.ArcLabelPosition.inside
                               )
                             ]
                           ),
                         )
                    ,),

    ));
  }  
}
class Task{
  String branch;
  double branchvalue;
  Color colorvalue;
  Task(this.branch,this.branchvalue,this.colorvalue);
}
