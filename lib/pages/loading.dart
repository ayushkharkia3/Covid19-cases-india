import 'package:flutter/material.dart';
import 'package:corona_monitor/services/counts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void count() async{
    try{
      Count instance = Count();
      await instance.getData();
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'active' : instance.active,
        'confirmed' : instance.confirmed,
        'deaths' : instance.deaths,
        'recovered' : instance.recovered
      });
    }
    catch(e) {
      print(e);
    }
  }
  @override
  void initState() {
    super.initState();
    count();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: Center(child: SpinKitChasingDots(
        color: Colors.orangeAccent,
        size : 80.0
      ),
    ),
  );
  }
}
