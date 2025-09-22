// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import '/flutter_flow/custom_functions.dart' as func;
import 'dart:convert';

Future storedDelete(BuildContext context, String name) async {
  var newData = FFAppState().saved;

  bool found = false;
  SavedProgramStruct tdDelete = new SavedProgramStruct();

  newData.forEach((element) {
    if (element.name == name) {
      tdDelete = element;
      found = true;
    }
  });

  if (found == false) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("NOK, " + name + " not found.")),
    );
  }

  newData.remove(tdDelete);

  FFAppState().update(() {
    FFAppState().saved = newData;
  });

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("OK, " + name + " deleted.")),
  );
}
