import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _saved = prefs
              .getStringList('ff_saved')
              ?.map((x) {
                try {
                  return SavedProgramStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _saved;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  String _currentStatus = '';
  String get currentStatus => _currentStatus;
  set currentStatus(String value) {
    _currentStatus = value;
  }

  List<SavedProgramStruct> _saved = [
    SavedProgramStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Default Venturi\",\"description\":\"default\",\"lines\":\"[\\\"000254000000023045200001001100000\\\"]\",\"type\":\"V\"}')),
    SavedProgramStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Default Aromare\",\"description\":\"\",\"lines\":\"[\\\"000254000000023045001001100100011\\\"]\",\"type\":\"A\"}')),
    SavedProgramStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Default Quad\",\"description\":\"quad default\",\"lines\":\"[\\\"000254000000023045001001100100002\\\",\\\"010254000000023045002001100049004\\\",\\\"020254000000023045003001100033006\\\",\\\"030254000000023045004001100022008\\\"]\",\"type\":\"Q\"}'))
  ];
  List<SavedProgramStruct> get saved => _saved;
  set saved(List<SavedProgramStruct> value) {
    _saved = value;
    prefs.setStringList('ff_saved', value.map((x) => x.serialize()).toList());
  }

  void addToSaved(SavedProgramStruct value) {
    saved.add(value);
    prefs.setStringList('ff_saved', _saved.map((x) => x.serialize()).toList());
  }

  void removeFromSaved(SavedProgramStruct value) {
    saved.remove(value);
    prefs.setStringList('ff_saved', _saved.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSaved(int index) {
    saved.removeAt(index);
    prefs.setStringList('ff_saved', _saved.map((x) => x.serialize()).toList());
  }

  void updateSavedAtIndex(
    int index,
    SavedProgramStruct Function(SavedProgramStruct) updateFn,
  ) {
    saved[index] = updateFn(_saved[index]);
    prefs.setStringList('ff_saved', _saved.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSaved(int index, SavedProgramStruct value) {
    saved.insert(index, value);
    prefs.setStringList('ff_saved', _saved.map((x) => x.serialize()).toList());
  }

  String _currentDescription = '';
  String get currentDescription => _currentDescription;
  set currentDescription(String value) {
    _currentDescription = value;
  }

  List<String> _currentRawLines = [];
  List<String> get currentRawLines => _currentRawLines;
  set currentRawLines(List<String> value) {
    _currentRawLines = value;
  }

  void addToCurrentRawLines(String value) {
    currentRawLines.add(value);
  }

  void removeFromCurrentRawLines(String value) {
    currentRawLines.remove(value);
  }

  void removeAtIndexFromCurrentRawLines(int index) {
    currentRawLines.removeAt(index);
  }

  void updateCurrentRawLinesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    currentRawLines[index] = updateFn(_currentRawLines[index]);
  }

  void insertAtIndexInCurrentRawLines(int index, String value) {
    currentRawLines.insert(index, value);
  }

  String _restoredDescription = '';
  String get restoredDescription => _restoredDescription;
  set restoredDescription(String value) {
    _restoredDescription = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
