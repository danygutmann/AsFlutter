// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//import '/flutter_flow/custom_functions.dart'; // Imports custom functions

import 'package:http/http.dart' as http;
import '/custom_code/actions/index.dart' as act;
import 'dart:convert';

Future<void> setDateTime(BuildContext context) async {
  String url = "http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=DT&DATE=";

  final now = DateTime.now().toUtc();
  switch (now.month) {
    case 1:
      url += "Jan";
      break;
    case 2:
      url += "Feb";
      break;
    case 3:
      url += "Mar";
      break;
    case 4:
      url += "Apr";
      break;
    case 5:
      url += "May";
      break;
    case 6:
      url += "Jun";
      break;
    case 7:
      url += "Jul";
      break;
    case 8:
      url += "Ago";
      break;
    case 9:
      url += "Sep";
      break;
    case 10:
      url += "Oct";
      break;
    case 11:
      url += "Nov";
      break;
    case 12:
      url += "Dec";
      break;
  }
  url += "%20";
  url += now.day.toString().padLeft(2, '0');
  url += "%20";
  url += now.year.toString();
  url += "&TIME=";
  url += now.hour.toString().padLeft(2, '0');
  url += ":";
  url += now.minute.toString().padLeft(2, '0');
  url += ":";
  url += now.second.toString().padLeft(2, '0');

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OK' + response.body.trim())),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('set time failed')),
      );
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $e')),
    );
  }
  await act.getInfo(context);
}
