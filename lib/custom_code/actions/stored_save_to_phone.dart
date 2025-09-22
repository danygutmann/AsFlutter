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

Future storedSaveToPhone(BuildContext context, String name) async {
  // check name unique
  bool check = true;
  FFAppState().saved.forEach((element) {
    if (element.name == name) check = false;
  });

  // check empty
  if (name.length < 1) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("NOK. Enter a name")),
    );
    return;
  }

  // check duplicate
  if (check == false) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("NOK. Name already exists")),
    );
    return;
  }

  // save
  SavedProgramStruct toAdd = new SavedProgramStruct();
  toAdd.name = name;
  toAdd.description = FFAppState().currentDescription;
  toAdd.type = FFAppState().CurrentDeviceInfo.typeLetter;
  toAdd.lines = FFAppState().currentRawLines;

  FFAppState().update(() {
    var newData = FFAppState().saved;
    newData.add(toAdd);
    FFAppState().saved = newData;
  });

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("OK, " + name + " saved.")),
  );
}
