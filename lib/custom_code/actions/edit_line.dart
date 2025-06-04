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

Future<void> editLine(
    BuildContext context, String lineRaw, String lineAddress) async {
  int start = 0;
  int stop = 3;
  bool day_mo = false;
  bool day_di = false;
  bool day_mi = false;
  bool day_do = false;
  bool day_fr = false;
  bool day_sa = false;
  bool day_so = false;

  context.pushNamed('deviceLine');

  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineAddress = lineAddress;
  });

  final splitted = lineRaw.split(';');
  int value = 0;

  // set Day
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

    for (int i = 8; i > 0; i--) {
      String curDay = dayAsBin.substring(start, stop);
      start = start - 1;
      stop = stop - 1;
      if (curDay == "1") {
        if (i == 7) {
          day_mo = true;
        }
        if (i == 6) {
          day_di = true;
        }
        if (i == 5) {
          day_mi = true;
        }
        if (i == 4) {
          day_do = true;
        }
        if (i == 3) {
          day_fr = true;
        }
        if (i == 2) {
          day_sa = true;
        }
        if (i == 1) {
          day_so = true;
        }
      }
    }
  }
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineDayBoolMo = day_mo;
    FFAppState().CurrentDeviceInfo.currentLineDayBoolDi = day_di;
    FFAppState().CurrentDeviceInfo.currentLineDayBoolMi = day_mi;
    FFAppState().CurrentDeviceInfo.currentLineDayBoolDo = day_do;
    FFAppState().CurrentDeviceInfo.currentLineDayBoolFr = day_fr;
    FFAppState().CurrentDeviceInfo.currentLineDayBoolSa = day_sa;
    FFAppState().CurrentDeviceInfo.currentLineDayBoolSo = day_so;
  });

  // set start Hour
  value = int.parse(splitted[1]);
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineStartHour = value;
  });

  // set start minute
  value = int.parse(splitted[2]);
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineStartMinute = value;
  });

  // set stop Hour
  value = int.parse(splitted[3]);
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineStopHour = value;
  });

  // set stop Minute
  value = int.parse(splitted[4]);
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineStopMinute = value;
  });

  // set fan
  value = int.parse(splitted[5]);
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineFan = value;
  });

  // set venturi int
  value = int.parse(splitted[6]);
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineVenturiInterval = value;
  });

  // set venturi dur
  value = int.parse(splitted[7]);
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineVenturiInterval = value;
  });

  // set speed
  value = int.parse(splitted[8]);
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineSpeed = value;
  });

  // set int
  value = int.parse(splitted[9]);
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineInterval = value;
  });

  //context.goNamed('/deviceLine');
}
