import 'dart:convert';

import 'package:http/http.dart';

class Count {
  int active;
  int recovered;
  int deaths;
  int confirmed;
  Future<void> getData() async{
    Response response = await get('https://api.covid19api.com/total/country/india');
    List data = jsonDecode(response.body);
    Map required = data[data.length - 1];
    print(required);
    active = required["Active"];
    recovered = required["Recovered"];
    confirmed = required["Confirmed"];
    deaths = required["Deaths"];
  }
}