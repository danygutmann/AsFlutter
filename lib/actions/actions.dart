import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';

Future readOutType(BuildContext context) async {
  ApiCallResponse? apiResultGetType;

  apiResultGetType = await AsQuerryCall.call(
    cmd: 'GT',
  );

  if ((apiResultGetType.succeeded ?? true)) {
    FFAppState().updateCurrentDeviceInfoStruct(
      (e) => e..type = (apiResultGetType?.bodyText ?? ''),
    );
  }
}

Future readOutAlias(BuildContext context) async {
  ApiCallResponse? apiResultGetAllias;

  apiResultGetAllias = await AsQuerryCall.call(
    cmd: 'GetAlias',
  );

  if ((apiResultGetAllias.succeeded ?? true)) {
    FFAppState().updateCurrentDeviceInfoStruct(
      (e) => e..alias = (apiResultGetAllias?.bodyText ?? ''),
    );
  }
}

Future getDeviceInfo(BuildContext context) async {
  ApiCallResponse? outGT;
  ApiCallResponse? infoOut;
  ApiCallResponse? aliasOut;
  ApiCallResponse? pwmOut;
  ApiCallResponse? serialOut;
  ApiCallResponse? readOutResultRaw;

  // Action  Get Type
  outGT = await AsQuerryCall.call(
    subcmd: 'GT',
  );

  if ((outGT.succeeded ?? true)) {
    // Action Save Type
    FFAppState().updateCurrentDeviceInfoStruct(
      (e) => e..type = (outGT?.bodyText ?? ''),
    );
    // Action Get Info
    infoOut = await AsQuerryCall.call(
      subcmd: 'I',
    );

    if ((infoOut.succeeded ?? true)) {
      // Action Save Info
      FFAppState().updateCurrentDeviceInfoStruct(
        (e) => e..info = (infoOut?.bodyText ?? ''),
      );
      // Action Get Alias
      aliasOut = await AsQuerryCall.call(
        subcmd: 'GetAlias',
        cmd: 'ReadData',
      );

      if ((aliasOut.succeeded ?? true)) {
        // Action Save Alias
        FFAppState().updateCurrentDeviceInfoStruct(
          (e) => e..alias = (aliasOut?.bodyText ?? ''),
        );
        // Action Get Pwm
        pwmOut = await AsQuerryCall.call(
          subcmd: 'PWMGET ',
          cmd: 'SendData',
        );

        if ((pwmOut.succeeded ?? true)) {
          // Action Sve Pwm
          FFAppState().updateCurrentDeviceInfoStruct(
            (e) => e..pwm = (pwmOut?.bodyText ?? ''),
          );
          // Action Get Serial
          serialOut = await AsQuerryCall.call(
            subcmd: 'GS',
          );

          FFAppState().updateCurrentDeviceInfoStruct(
            (e) => e..serial = (serialOut?.bodyText ?? ''),
          );
          // Get Type Letter from Type
          FFAppState().updateCurrentDeviceInfoStruct(
            (e) => e
              ..typeLetter = functions.getTypeLetter((outGT?.bodyText ?? '')),
          );
          if (FFAppState().CurrentDeviceInfo.typeLetter == 'A') {
            // Fan Count = 1
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..fanCount = 1,
            );
            // Set Fan Selector
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..showFanSelector = false,
            );
            // Set Speed Selector
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..showPowerSelector = false,
            );
            // Set Venturi Selector
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..showVenturiSelector = false,
            );
          } else if (FFAppState().CurrentDeviceInfo.typeLetter == 'Q') {
            // Fan Count = 4
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..fanCount = 4,
            );
            // Set Fan Selector
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..showFanSelector = true,
            );
            // Set Speed Selector
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..showPowerSelector = true,
            );
            // Set Venturi Selector
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..showVenturiSelector = false,
            );
          } else if (FFAppState().CurrentDeviceInfo.typeLetter == 'V') {
            // Fan Count = 3
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..fanCount = 3,
            );
            // Set Fan Selector
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..showFanSelector = true,
            );
            // Set Speed Selector
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..showPowerSelector = true,
            );
            // Set Venturi Selector
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e..showVenturiSelector = true,
            );
          }

          FFAppState().updateCurrentDeviceInfoStruct(
            (e) => e
              ..readOutLineWasEmpty = false
              ..readOutNextLine = 1
              ..lines = [],
          );
          while (FFAppState().CurrentDeviceInfo.readOutLineWasEmpty == true) {
            FFAppState().updateCurrentDeviceInfoStruct(
              (e) => e
                ..readOutNextAddress = functions.convertLineToAddress(
                    FFAppState().CurrentDeviceInfo.readOutNextLine),
            );
            readOutResultRaw = await AsQuerryCall.call(
              cmd: 'R',
              subcmd: 'SendData',
              lines: 1,
              data: FFAppState().CurrentDeviceInfo.readOutNextAddress,
            );

            if ((readOutResultRaw.succeeded ?? true)) {
              FFAppState().updateCurrentDeviceInfoStruct(
                (e) => e
                  ..readOutRaw = (readOutResultRaw?.bodyText ?? '')
                  ..readOutLineWasEmpty = functions.checkLineIsEmpty(
                      FFAppState().CurrentDeviceInfo.readOutRaw)
                  ..updateLines(
                    (e) => e.add(functions.newDeviceLineFromString(
                        FFAppState().CurrentDeviceInfo.readOutRaw)),
                  ),
              );
            } else {
              FFAppState().updateCurrentDeviceInfoStruct(
                (e) => e..readOutLineWasEmpty = true,
              );
            }
          }
        }
      }
    }
  }
}
