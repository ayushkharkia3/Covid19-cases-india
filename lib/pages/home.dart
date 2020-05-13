import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();
  Map data;
  List<CircularStackEntry> data1;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data["active"]);
    
    data1 = <CircularStackEntry>[
  new CircularStackEntry(
    <CircularSegmentEntry>[
      new CircularSegmentEntry(double.parse(data['active'].toString()), Colors.blue[800], rankKey: 'Active'),
      new CircularSegmentEntry(double.parse(data['recovered'].toString()), Colors.green[600], rankKey: 'Recovered'),
      new CircularSegmentEntry(double.parse(data['deaths'].toString()), Colors.red[800], rankKey: 'Deaths'),
    ],
    rankKey: 'Cases',
  ),
];
    print(data);
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[700],
        title: Text("COVID19 CASES IN INDIA"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border: Border.all(width: 2,color: Colors.grey[200]),
                        boxShadow: [BoxShadow(blurRadius: 2,color: Colors.grey[500])],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(data['confirmed'].toString(),
                              style: TextStyle(
                                fontSize: 30.0,
                                fontFamily: 'Montserrat-Dark',
                                color: Colors.orange[800],
                              ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('Confirmed',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontFamily: 'Montserrat-Light',
                                fontSize: 16.0
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 2,color: Colors.grey[200]),
                        boxShadow: [BoxShadow(blurRadius: 2,color: Colors.grey[500])],
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(data['active'].toString(),
                              style: TextStyle(
                                fontSize: 30.0,
                                fontFamily: 'Montserrat-Dark',
                                color: Colors.blue[800],
                              ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('Active',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontFamily: 'Montserrat-Light',
                                fontSize: 16.0
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 2,color: Colors.grey[200]),
                        boxShadow: [BoxShadow(blurRadius: 2,color: Colors.grey[500])],
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(data['recovered'].toString(),
                              style: TextStyle(
                                fontSize: 30.0,
                                fontFamily: 'Montserrat-Dark',
                                color: Colors.green,
                              ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('Recovered',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontFamily: 'Montserrat-Light',
                                fontSize: 16.0
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 2,color: Colors.grey[200]),
                        boxShadow: [BoxShadow(blurRadius: 2,color: Colors.grey[500])],
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                        child: Container(
                          child: Column( 
                            children: <Widget>[
                              Text(data['deaths'].toString(),
                              style: TextStyle(
                                fontSize: 30.0,
                                fontFamily: 'Montserrat-Dark',
                                color: Colors.red[800],
                              ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('Deaths',
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontFamily: 'Montserrat-Light',
                                fontSize: 16.0
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AnimatedCircularChart(
    key: _chartKey,
    size: const Size(300.0, 300.0),
    initialChartData: data1,
    chartType: CircularChartType.Pie,
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 25),
        child: Text("COVID19 CASES IN INDIA",
        style: TextStyle(color: Colors.black38,fontFamily: "Montserrat-Light"),
        ),
      )
    ],
  )
          ],
        ),
      ),
    );
  }
}
