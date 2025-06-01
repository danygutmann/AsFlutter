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
  int dayAsInt = 0;
  String dayAsString = "";
  bool day_mo = false;
  bool day_di = false;
  bool day_mi = false;
  bool day_do = false;
  bool day_fr = false;
  bool day_sa = false;
  bool day_so = false;

  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.currentLineAddress = lineAddress;
  });

  final splitted = lineRaw.split(';');

  for (int i = 0; i <= splitted.length; i++) {
    String result = splitted[i];
    int resInt = int.parse(result);

    if (i == 0) {
      if (resInt == 0) {
        dayAsString = "never";
      } else if (resInt == 254) {
        day_mo = true;
        day_di = true;
        day_mi = true;
        day_do = true;
        day_fr = true;
        day_sa = true;
        day_so = true;
        dayAsString = "daily";
      } else if (resInt == 192) {
        day_sa = true;
        day_so = true;
        dayAsString = "at the weekend";
      } else if (resInt == 62) {
        day_mo = true;
        day_di = true;
        day_mi = true;
        day_do = true;
        day_fr = true;
        dayAsString = "on workdays";
      } else {
        start = 7;
        stop = 8;
        var dayAsByte = resInt & 0xff;
        String dayAsBin = dayAsByte.toRadixString(2).padLeft(8, '0');

        for (int i = 8; i > 0; i--) {
          String curDay = dayAsBin.substring(start, stop);
          start = start - 1;
          stop = stop - 1;
          if (curDay == "1") {
            if (i == 7) {
              day_mo = true;
              dayAsString += "mo, ";
            }
            if (i == 6) {
              day_di = true;
              dayAsString += "di, ";
            }
            if (i == 5) {
              day_mi = true;
              dayAsString += "mi, ";
            }
            if (i == 4) {
              day_do = true;
              dayAsString += "do, ";
            }
            if (i == 3) {
              day_fr = true;
              dayAsString += "fr, ";
            }
            if (i == 2) {
              day_sa = true;
              dayAsString += "sa, ";
            }
            if (i == 1) {
              day_so = true;
              dayAsString += "so, ";
            }
          }
        }

        dayAsString = dayAsString.substring(0, dayAsString.length - 2);
      }
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineDayBoolMo = day_mo;
        FFAppState().CurrentDeviceInfo.currentLineDayBoolDi = day_di;
        FFAppState().CurrentDeviceInfo.currentLineDayBoolMi = day_mi;
        FFAppState().CurrentDeviceInfo.currentLineDayBoolDo = day_do;
        FFAppState().CurrentDeviceInfo.currentLineDayBoolFr = day_fr;
        FFAppState().CurrentDeviceInfo.currentLineDayBoolSa = day_sa;
        FFAppState().CurrentDeviceInfo.currentLineDayBoolSo = day_so;
        FFAppState().CurrentDeviceInfo.currentLineDayString = dayAsString;
      });
    }
    if (i == 1) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineStartHour = resInt;
      });
    }
    if (i == 2) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineStartMinute = resInt;
      });
    }
    if (i == 3) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineStopHour = resInt;
      });
    }
    if (i == 4) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineStopMinute = resInt;
      });
    }
    if (i == 5) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineFan = resInt;
      });
    }
    if (i == 6) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineVenturiInterval = resInt;
      });
    }
    if (i == 7) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineVenturiDuration = resInt;
      });
    }
    if (i == 8) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineSpeed = resInt;
      });
    }
    if (i == 9) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.currentLineInterval = resInt;
      });
    } else {
      // rebuild all pages
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        FFAppState().update(() {});
      });

      // navigate
      // https://api.flutter.dev/flutter/widgets/Navigator/pushNamed.html
      Navigator.pushReplacementNamed(context, '/deviceLine');
    }
  }
}
