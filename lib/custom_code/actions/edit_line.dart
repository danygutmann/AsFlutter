// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/scheduler.dart';
//import '/flutter_flow/custom_functions.dart'; // Imports custom functions

Future<void> editLine(BuildContext context, String lineAddress) async {
  String lineRaw = "";
  bool IsLastLine = false;
  int lineNumber = -1;

  if (lineAddress == "000") {
    lineRaw = FFAppState().CurrentDeviceInfo.line01Raw;
    lineNumber = 1;
    if (FFAppState().CurrentDeviceInfo.line02Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "010") {
    lineRaw = FFAppState().CurrentDeviceInfo.line02Raw;
    lineNumber = 2;
    if (FFAppState().CurrentDeviceInfo.line03Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "020") {
    lineRaw = FFAppState().CurrentDeviceInfo.line03Raw;
    lineNumber = 3;
    if (FFAppState().CurrentDeviceInfo.line04Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "030") {
    lineRaw = FFAppState().CurrentDeviceInfo.line04Raw;
    lineNumber = 4;
    if (FFAppState().CurrentDeviceInfo.line05Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "040") {
    lineRaw = FFAppState().CurrentDeviceInfo.line05Raw;
    lineNumber = 5;
    if (FFAppState().CurrentDeviceInfo.line06Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "050") {
    lineRaw = FFAppState().CurrentDeviceInfo.line06Raw;
    lineNumber = 6;
    if (FFAppState().CurrentDeviceInfo.line07Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "060") {
    lineRaw = FFAppState().CurrentDeviceInfo.line07Raw;
    lineNumber = 7;
    if (FFAppState().CurrentDeviceInfo.line08Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "070") {
    lineRaw = FFAppState().CurrentDeviceInfo.line08Raw;
    lineNumber = 8;
    if (FFAppState().CurrentDeviceInfo.line09Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "080") {
    lineRaw = FFAppState().CurrentDeviceInfo.line09Raw;
    lineNumber = 9;
    if (FFAppState().CurrentDeviceInfo.line10Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "090") {
    lineRaw = FFAppState().CurrentDeviceInfo.line10Raw;
    lineNumber = 10;
    if (FFAppState().CurrentDeviceInfo.line11Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "100") {
    lineRaw = FFAppState().CurrentDeviceInfo.line11Raw;
    lineNumber = 11;
    if (FFAppState().CurrentDeviceInfo.line12Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "110") {
    lineRaw = FFAppState().CurrentDeviceInfo.line12Raw;
    lineNumber = 12;
    if (FFAppState().CurrentDeviceInfo.line13Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "120") {
    lineRaw = FFAppState().CurrentDeviceInfo.line13Raw;
    lineNumber = 13;
    if (FFAppState().CurrentDeviceInfo.line14Raw.startsWith("255"))
      IsLastLine = true;
  }
  if (lineAddress == "130") {
    lineRaw = FFAppState().CurrentDeviceInfo.line14Raw;
    lineNumber = 14;
    IsLastLine = true;
  }

  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineAddress = lineAddress;
    FFAppState().CurrentDeviceInfo.currentLineIsLast = IsLastLine;
    FFAppState().CurrentDeviceInfo.currentLineNumber = lineNumber;
  });

  int start = 0;
  int stop = 3;
  bool day_mo = false;
  bool day_di = false;
  bool day_mi = false;
  bool day_do = false;
  bool day_fr = false;
  bool day_sa = false;
  bool day_so = false;

  final splitted = lineRaw.split(';');
  int value = 0;

  // set Day
  try {
    value = int.parse(splitted[0]);
    if (value == 254) {
      day_mo = true;
      day_di = true;
      day_mi = true;
      day_do = true;
      day_fr = true;
      day_sa = true;
      day_so = true;
    } else if (value == 192) {
      day_sa = true;
      day_so = true;
    } else if (value == 62) {
      day_mo = true;
      day_di = true;
      day_mi = true;
      day_do = true;
      day_fr = true;
    } else {
      start = 7;
      stop = 8;

      var dayAsByte = value & 0xff;
      String dayAsBin = dayAsByte.toRadixString(2).padLeft(8, '0');
      //outp += dayAsBin + "-";
      if (dayAsBin.substring(6, 7) == "1") {
        day_mo = true;
      }
      if (dayAsBin.substring(5, 6) == "1") {
        day_di = true;
      }
      if (dayAsBin.substring(4, 5) == "1") {
        day_mi = true;
      }
      if (dayAsBin.substring(3, 4) == "1") {
        day_do = true;
      }
      if (dayAsBin.substring(2, 3) == "1") {
        day_fr = true;
      }
      if (dayAsBin.substring(1, 2) == "1") {
        day_sa = true;
      }
      if (dayAsBin.substring(0, 1) == "1") {
        day_so = true;
      }
    }
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineDayInt = value;
      FFAppState().CurrentDeviceInfo.currentLineDayBoolMo = day_mo;
      FFAppState().CurrentDeviceInfo.currentLineDayBoolDi = day_di;
      FFAppState().CurrentDeviceInfo.currentLineDayBoolMi = day_mi;
      FFAppState().CurrentDeviceInfo.currentLineDayBoolDo = day_do;
      FFAppState().CurrentDeviceInfo.currentLineDayBoolFr = day_fr;
      FFAppState().CurrentDeviceInfo.currentLineDayBoolSa = day_sa;
      FFAppState().CurrentDeviceInfo.currentLineDayBoolSo = day_so;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error at day: $e')),
    );
  }

  // set start Hour
  try {
    value = int.parse(splitted[1]);
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineStartHour = value;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error at start h: $e')),
    );
  }

  // set start minute
  try {
    value = int.parse(splitted[2]);
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineStartMinute = value;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error at start m: $e')),
    );
  }

  // set stop Hour
  try {
    value = int.parse(splitted[3]);
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineStopHour = value;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error at stop h: $e')),
    );
  }

  // set stop Minute
  try {
    value = int.parse(splitted[4]);
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineStopMinute = value;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Errorat at stop m: $e')),
    );
  }

  // set fan
  try {
    value = int.parse(splitted[5]);
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineFan = value;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error at fan: $e')),
    );
  }

  // set venturi int
  try {
    value = int.parse(splitted[6]);
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineVenturiInterval = value;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error at  vet int: $e')),
    );
  }

  // set venturi dur
  try {
    value = int.parse(splitted[7]);
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineVenturiDuration = value;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error at vet dur: $e')),
    );
  }

  // set speed
  try {
    value = int.parse(splitted[8]);
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineSpeed = value;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error at speed: $e')),
    );
  }

  // set int
  try {
    value = int.parse(splitted[9]);
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineInterval = value;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error at int: $e')),
    );
  }
}
