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

String prepareData(
  String address,
  int startHour,
  int startMinute,
  int stopHour,
  int stopMinute,
  int fan,
  int venturiInterval,
  int venturiDuration,
  int power,
  String interval,
  bool montag,
  bool dienstag,
) {
  String ArgToSend = "";
  int day = 0;
  if (montag) day = day + 1;
  if (dienstag) day = day + 2;

  ArgToSend += day.toString().padLeft(3, '0');
  ArgToSend += startHour.toString().padLeft(3, '0');
  ArgToSend += startMinute.toString().padLeft(3, '0');
  ArgToSend += stopHour.toString().padLeft(3, '0');
  ArgToSend += stopMinute.toString().padLeft(3, '0');
  ArgToSend += fan.toString().padLeft(3, '0');
  ArgToSend += venturiInterval.toString().padLeft(3, '0');
  ArgToSend += venturiDuration.toString().padLeft(3, '0');
  ArgToSend += power.toString().padLeft(3, '0');
  ArgToSend += interval.toString().padLeft(3, '0');

  return ArgToSend;
}

bool showThisLineItsNotEmpty(String lineAsString) {
  final splitted = lineAsString.split(';');
  if (splitted.first != "255") {
    return true;
  }
  return false;
}

String getLineDescription(String lineRaw) {
  String outp = "";
  final splitted = lineRaw.split(';');
  for (int i = 0; i <= splitted.length - 1; i++) {
    String result = splitted[i];
    int resInt = int.parse(result);

    if (i == 0) {
      if (resInt == 0) {
        outp += "never";
      } else if (resInt == 254) {
        outp += "daily";
      } else if (resInt == 192) {
        outp += "at the weekend";
      } else if (resInt == 62) {
        outp += "on workdays";
      } else {
        int start = 7;
        int stop = 8;
        var dayAsByte = resInt & 0xff;
        String dayAsBin = dayAsByte.toRadixString(2).padLeft(8, '0');
        for (int i = 8; i > 0; i--) {
          String curDay = dayAsBin.substring(start, stop);
          start = start - 1;
          stop = stop - 1;
          if (curDay == "1") {
            if (i == 7) {
              outp += "mo, ";
            }
            if (i == 6) {
              outp += "di, ";
            }
            if (i == 5) {
              outp += "mi, ";
            }
            if (i == 4) {
              outp += "do, ";
            }
            if (i == 3) {
              outp += "fr, ";
            }
            if (i == 2) {
              outp += "sa, ";
            }
            if (i == 1) {
              outp += "so, ";
            }
          }
        }
        outp = outp.substring(0, outp.length - 2);
      }
    }
    if (i == 1) {
      outp += "from " + resInt.toString() + ":";
    }
    if (i == 2) {
      outp += resInt.toString().padLeft(2, '0') + " to ";
    }
    if (i == 3) {
      outp += resInt.toString() + ":";
    }
    if (i == 4) {
      outp += resInt.toString().padLeft(2, '0') + ". ";
    }
    if (i == 5) {
      if (resInt == 1) outp += "Fan 1";
      if (resInt == 2) outp += "Fan 2";
      if (resInt == 3) outp += "Fan 3";
      if (resInt == 4) outp += "Fan 4";
      if (resInt > 100) outp += "Venturi";
    }
    if (i == 6) {
      // currentLineVenturiInterval
    }
    if (i == 7) {
      // currentLineVenturiDuration
    }
    if (i == 8) {
      if (resInt == 0) outp += " is off.";
      if (resInt == 11) outp += " with 50% Power";
      if (resInt == 16) outp += " with 60% Power";
      if (resInt == 22) outp += " with 70% Power";
      if (resInt == 33) outp += " with 80% Power";
      if (resInt == 49) outp += " with 90% Power";
      if (resInt == 100) outp += "with 100% Power.";
    }
  }

  return outp;
}
