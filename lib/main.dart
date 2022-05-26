import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:fortune_task/pages/bar_chart.dart';
import 'package:fortune_task/pages/pie_chart.dart';
import 'package:fortune_task/pages/time_series_chart.dart';
 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
      
        primarySwatch: Colors.blue,
      ),
      home:DefaultTabController(length: 3, 
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            
            Tab(text: ("Bar Chart")),
            Tab(text: ("Pie Chart")),
            Tab(text: ("Time Series Chart")),
            
          ],),
        ),
        body: TabBarView(children: [
          BarChartSample2(),
          PieChartSample2(),
          LineChartSample10()
        ]),
      )),
    );
  }
}

