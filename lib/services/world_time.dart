import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  late String time;
  String flag;
  String uri;

  WorldTime({required this.location, required this.flag, required this.uri});

  Future<void> getTime() async {
    try {
      var url = Uri.parse('http://worldtimeapi.org/api/timezone/$uri');
      Response response = await get(url);
      Map data = jsonDecode(response.body);

      //get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Caught error: $e');
      time = 'Could not get time data';
    }
  }
}