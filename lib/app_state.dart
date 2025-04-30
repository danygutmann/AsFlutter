import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// all info
  DeviceInfoStruct _CurrentDeviceInfo = DeviceInfoStruct.fromSerializableMap(
      jsonDecode(
          '{\"Type\":\"not set\",\"Alias\":\"not set\",\"Info\":\"not set\",\"PWM\":\"0\"}'));
  DeviceInfoStruct get CurrentDeviceInfo => _CurrentDeviceInfo;
  set CurrentDeviceInfo(DeviceInfoStruct value) {
    _CurrentDeviceInfo = value;
  }

  void updateCurrentDeviceInfoStruct(Function(DeviceInfoStruct) updateFn) {
    updateFn(_CurrentDeviceInfo);
  }
}
