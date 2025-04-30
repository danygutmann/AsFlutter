import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String? getTypeLetter(String fromApi) {
  if (fromApi.toLowerCase().contains("aromare")) return "A";
  if (fromApi.toLowerCase().contains("venturi")) return "V";
  if (fromApi.toLowerCase().contains("quad")) return "Q";
  return "E";
}

String addLineFromApi(String input) {
  DeviceLineStruct line = new DeviceLineStruct();
  line.log = "";
  line.raw = input;
  line.raw.trim();
  int length = line.raw.length;
  line.log += "length = " + length.toString() + "\n";

  int parts = length ~/ 3;
  int start = 0;
  int stop = 3;

  int dayAsInt = 0;

  for (int i = 1; i <= parts; i++) {
    String result = line.raw.substring(start, stop);
    start = start + 3;
    stop = stop + 3;

    //

    if (i == 1) {
      line.log += "LineAddress: " + int.parse(result).toString();
    }
    if (i == 2) {
      dayAsInt = int.parse(result);
      line.log += "Day: " + dayAsInt.toString();
    }
    if (i == 3) {
      line.log += "StartHour: " + int.parse(result).toString();
    }
    if (i == 4) {
      line.log += "StartMinute: " + int.parse(result).toString();
    }
    if (i == 5) {
      line.log += "StopHour: " + int.parse(result).toString();
    }
    if (i == 6) {
      line.log += "StopMinute: " + int.parse(result).toString();
    }
    if (i == 7) {
      line.log += "Fan: " + int.parse(result).toString();
    }
    if (i == 8) {
      line.log += "VenturiIntervall: " + int.parse(result).toString();
    }
    if (i == 9) {
      line.log += "VenturiDuration: " + int.parse(result).toString();
    }
    if (i == 0) {
      line.log += "Interval: " + int.parse(result).toString();
    }
    // more debug
    line.log += "  (part " + i.toString() + "=" + result + ")\n";
  }

  // analyse days
  var dayAsByte = dayAsInt & 0xff;
  line.log += "day as byte: " + dayAsByte.toString() + "\n";
  String dayAsBin = dayAsByte.toRadixString(2).padLeft(8, '0');
  line.log += "day as bin: " + dayAsBin + "\n";

  bool day_mo = false;
  bool day_di = false;
  bool day_mi = false;
  bool day_do = false;
  bool day_fr = false;
  bool day_sa = false;
  bool day_so = false;
  String dayAsString = "";

  if (dayAsInt == 0) {
    dayAsString = "never";
  } else if (dayAsInt == 254) {
    day_mo = true;
    day_di = true;
    day_mi = true;
    day_do = true;
    day_fr = true;
    day_sa = true;
    day_so = true;
    dayAsString = "daily";
  } else if (dayAsInt == 192) {
    day_sa = true;
    day_so = true;
    dayAsString = "at the weekend";
  } else if (dayAsInt == 62) {
    day_mo = true;
    day_di = true;
    day_mi = true;
    day_do = true;
    day_fr = true;
    dayAsString = "on workdays";
  } else {
    start = 7;
    stop = 8;
    for (int i = 8; i > 0; i--) {
      String curDay = dayAsBin.substring(start, stop);
      start = start - 1;
      stop = stop - 1;
      line.log += "  (day " + i.toString() + "=" + curDay + ")\n";
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

  line.log += "day as string: " + dayAsString + "\n";

  return line.log;
}

String convertLineToAddress(int line) {
  int address = (line * 10) - 10;
  return address.toString().padLeft(3, '0');
}

bool checkLineIsEmpty(String input) {
  final splitted = input.split(';');
  if (splitted.first == "255") return true;
  return false;
}

DeviceLineStruct newDeviceLineFromString(String input) {
  //import 'package:dartpad_sample/main.dart';

  DeviceLineStruct line = new DeviceLineStruct();
  line.raw = input;

  return line;
}
