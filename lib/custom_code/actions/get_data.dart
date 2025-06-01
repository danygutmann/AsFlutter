// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//import '/flutter_flow/custom_functions.dart'; // Imports custom functions

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> getData(BuildContext context) async {
  // Convert Type To String
  String typeString = FFAppState().CurrentDeviceInfo.type;
  if (typeString.toLowerCase().contains("aromare"))
    FFAppState().CurrentDeviceInfo.typeLetter = "A";
  if (typeString.toLowerCase().contains("venturi"))
    FFAppState().CurrentDeviceInfo.typeLetter = "V";
  if (typeString.toLowerCase().contains("quad"))
    FFAppState().CurrentDeviceInfo.typeLetter = "Q";

  // ask API
  try {
    final response = await http.get(Uri.parse("http://192.168.4.1/"));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Success: ${data.toString()}')),
      );
    } else {
      throw Exception('Failed with status: ${response.statusCode}');
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $e')),
    );
  }
}
