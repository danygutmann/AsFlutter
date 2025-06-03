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

bool showThisLineItsNotEmpty(String lineAsString) {
  try {
    final splitted = lineAsString.split(';');

    if (splitted.first != "255") {
      return true;
    }
    return false;
  } catch (e) {
    return false;
  }
}

String getLineDescription(String lineRaw) {
  String outp = "";
  final splitted = lineRaw.split(';');
  int value = 0;

  try {
    value = int.parse(splitted[0]);
    if (value == 0) {
      outp += "never";
    } else if (value == 254) {
      outp += "daily";
    } else if (value == 192) {
      outp += "at the weekend";
    } else if (value == 62) {
      outp += "on workdays";
    } else {
      int start = 7;
      int stop = 8;
      var dayAsByte = value & 0xff;
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
  } catch (e) {}

  try {
    value = int.parse(splitted[1]);
    outp += " from " + value.toString() + ":";
  } catch (e) {}

  try {
    value = int.parse(splitted[2]);
    outp += value.toString().padLeft(2, '0') + " to ";
  } catch (e) {}

  try {
    value = int.parse(splitted[3]);
    outp += value.toString() + ":";
  } catch (e) {}

  try {
    value = int.parse(splitted[3]);
    outp += value.toString().padLeft(2, '0') + ". ";
  } catch (e) {}

  try {
    value = int.parse(splitted[4]);
    if (value == 1) outp += "Fan 1";
    if (value == 2) outp += "Fan 2";
    if (value == 3) outp += "Fan 3";
    if (value == 4) outp += "Fan 4";
    if (value > 100) outp += "Venturi";
  } catch (e) {}

  try {
    value = int.parse(splitted[5]);
    if (value == 1) outp += "Fan 1";
    if (value == 2) outp += "Fan 2";
    if (value == 3) outp += "Fan 3";
    if (value == 4) outp += "Fan 4";
    if (value > 100) outp += "Venturi";
  } catch (e) {}

  // currentLineVenturiInterval 6
  // currentLineVenturiDuration 7

  try {
    value = int.parse(splitted[8]);
    if (value == 0) outp += " is off.";
    if (value == 11) outp += " with 50% Power";
    if (value == 16) outp += " with 60% Power";
    if (value == 22) outp += " with 70% Power";
    if (value == 33) outp += " with 80% Power";
    if (value == 49) outp += " with 90% Power";
    if (value == 100) outp += " with 100% Power.";
  } catch (e) {}

  try {
    value = int.parse(splitted[9]);
    //outp += value.toString().padLeft(2, '0') + ". ";
  } catch (e) {}

  return outp;
}
