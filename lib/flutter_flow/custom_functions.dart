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

String getLineDescription(String lineRaw) {
  String outp = "";
  final splitted = lineRaw.split(';');
  int value = 0;
  bool isVenturi = false;

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
    value = int.parse(splitted[4]);
    outp += value.toString().padLeft(2, '0') + ". ";
  } catch (e) {}

  try {
    value = int.parse(splitted[5]);
    if (value == 1) outp += "Fan 1";
    if (value == 2) outp += "Fan 2";
    if (value == 3) outp += "Fan 3";
    if (value == 4) outp += "Fan 4";
    if (value > 100) {
      outp += "Venturi";
      isVenturi = true;
    }
  } catch (e) {}

  if (isVenturi) {
    // currentLineVenturiInterval 6
    // currentLineVenturiDuration 7
    try {
      int interv = int.parse(splitted[6]);
      int durati = int.parse(splitted[7]);
      outp += " all " +
          interv.toString() +
          " min Venturi for " +
          durati.toString() +
          " sec";
    } catch (e) {}
  } else {
    // power
    try {
      value = int.parse(splitted[8]);
      if (value == 0) outp += " is off.";
      if (value == 11) outp += " with 50% ";
      if (value == 16) outp += " with 60% ";
      if (value == 22) outp += " with 70% ";
      if (value == 33) outp += " with 80% ";
      if (value == 49) outp += " with 90% ";
      if (value == 100) outp += " with 100% ";
    } catch (e) {}

    // interval
    try {
      value = int.parse(splitted[9]);
      if (value == 1) outp += " 1 min on, 9 off";
      if (value == 2) outp += " 2 min on, 8 off";
      if (value == 3) outp += " 3 min on, 7 off";
      if (value == 4) outp += " 4 min on, 6 off";
      if (value == 5) outp += " 5 min on, 5 off";
      if (value == 6) outp += " 6 min on, 4 off";
      if (value == 7) outp += " 7 min on, 3 off";
      if (value == 8) outp += " 8 min on, 2 off";
      if (value == 9) outp += " 9 min on, 1 off";
      if (value == 11) outp += " 1 min on, 1 off";
      if (value == 22) outp += " 2 min on, 2 off";
    } catch (e) {}
  }

  return outp;
}
