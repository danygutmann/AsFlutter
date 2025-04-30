// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// the device line
class DeviceLineStruct extends BaseStruct {
  DeviceLineStruct({
    /// the raw line
    String? raw,

    /// the line number
    int? lineNumber,

    /// the line adress for read and write
    int? lineaddress,
    int? day,
    int? startHour,
    int? startMinute,
    int? stopHour,
    int? stopMinute,
    int? fan,
    int? veturiIntervall,
    int? vennturiDuration,
    int? speed,
    int? intervall,

    /// linelog
    String? log,
    bool? dayMontag,
    bool? dayDienstag,
    bool? dayMittwoch,
    bool? dayDonnerstag,
    bool? dayFreitag,
    bool? daySamstag,
    bool? daySonntag,
    String? daysString,
  })  : _raw = raw,
        _lineNumber = lineNumber,
        _lineaddress = lineaddress,
        _day = day,
        _startHour = startHour,
        _startMinute = startMinute,
        _stopHour = stopHour,
        _stopMinute = stopMinute,
        _fan = fan,
        _veturiIntervall = veturiIntervall,
        _vennturiDuration = vennturiDuration,
        _speed = speed,
        _intervall = intervall,
        _log = log,
        _dayMontag = dayMontag,
        _dayDienstag = dayDienstag,
        _dayMittwoch = dayMittwoch,
        _dayDonnerstag = dayDonnerstag,
        _dayFreitag = dayFreitag,
        _daySamstag = daySamstag,
        _daySonntag = daySonntag,
        _daysString = daysString;

  // "raw" field.
  String? _raw;
  String get raw => _raw ?? 'empty';
  set raw(String? val) => _raw = val;

  bool hasRaw() => _raw != null;

  // "lineNumber" field.
  int? _lineNumber;
  int get lineNumber => _lineNumber ?? 0;
  set lineNumber(int? val) => _lineNumber = val;

  void incrementLineNumber(int amount) => lineNumber = lineNumber + amount;

  bool hasLineNumber() => _lineNumber != null;

  // "lineaddress" field.
  int? _lineaddress;
  int get lineaddress => _lineaddress ?? 0;
  set lineaddress(int? val) => _lineaddress = val;

  void incrementLineaddress(int amount) => lineaddress = lineaddress + amount;

  bool hasLineaddress() => _lineaddress != null;

  // "day" field.
  int? _day;
  int get day => _day ?? 254;
  set day(int? val) => _day = val;

  void incrementDay(int amount) => day = day + amount;

  bool hasDay() => _day != null;

  // "startHour" field.
  int? _startHour;
  int get startHour => _startHour ?? 0;
  set startHour(int? val) => _startHour = val;

  void incrementStartHour(int amount) => startHour = startHour + amount;

  bool hasStartHour() => _startHour != null;

  // "startMinute" field.
  int? _startMinute;
  int get startMinute => _startMinute ?? 0;
  set startMinute(int? val) => _startMinute = val;

  void incrementStartMinute(int amount) => startMinute = startMinute + amount;

  bool hasStartMinute() => _startMinute != null;

  // "stopHour" field.
  int? _stopHour;
  int get stopHour => _stopHour ?? 23;
  set stopHour(int? val) => _stopHour = val;

  void incrementStopHour(int amount) => stopHour = stopHour + amount;

  bool hasStopHour() => _stopHour != null;

  // "stopMinute" field.
  int? _stopMinute;
  int get stopMinute => _stopMinute ?? 0;
  set stopMinute(int? val) => _stopMinute = val;

  void incrementStopMinute(int amount) => stopMinute = stopMinute + amount;

  bool hasStopMinute() => _stopMinute != null;

  // "Fan" field.
  int? _fan;
  int get fan => _fan ?? 0;
  set fan(int? val) => _fan = val;

  void incrementFan(int amount) => fan = fan + amount;

  bool hasFan() => _fan != null;

  // "VeturiIntervall" field.
  int? _veturiIntervall;
  int get veturiIntervall => _veturiIntervall ?? 0;
  set veturiIntervall(int? val) => _veturiIntervall = val;

  void incrementVeturiIntervall(int amount) =>
      veturiIntervall = veturiIntervall + amount;

  bool hasVeturiIntervall() => _veturiIntervall != null;

  // "VennturiDuration" field.
  int? _vennturiDuration;
  int get vennturiDuration => _vennturiDuration ?? 0;
  set vennturiDuration(int? val) => _vennturiDuration = val;

  void incrementVennturiDuration(int amount) =>
      vennturiDuration = vennturiDuration + amount;

  bool hasVennturiDuration() => _vennturiDuration != null;

  // "Speed" field.
  int? _speed;
  int get speed => _speed ?? 0;
  set speed(int? val) => _speed = val;

  void incrementSpeed(int amount) => speed = speed + amount;

  bool hasSpeed() => _speed != null;

  // "Intervall" field.
  int? _intervall;
  int get intervall => _intervall ?? 0;
  set intervall(int? val) => _intervall = val;

  void incrementIntervall(int amount) => intervall = intervall + amount;

  bool hasIntervall() => _intervall != null;

  // "Log" field.
  String? _log;
  String get log => _log ?? 'empty';
  set log(String? val) => _log = val;

  bool hasLog() => _log != null;

  // "dayMontag" field.
  bool? _dayMontag;
  bool get dayMontag => _dayMontag ?? false;
  set dayMontag(bool? val) => _dayMontag = val;

  bool hasDayMontag() => _dayMontag != null;

  // "dayDienstag" field.
  bool? _dayDienstag;
  bool get dayDienstag => _dayDienstag ?? false;
  set dayDienstag(bool? val) => _dayDienstag = val;

  bool hasDayDienstag() => _dayDienstag != null;

  // "dayMittwoch" field.
  bool? _dayMittwoch;
  bool get dayMittwoch => _dayMittwoch ?? false;
  set dayMittwoch(bool? val) => _dayMittwoch = val;

  bool hasDayMittwoch() => _dayMittwoch != null;

  // "dayDonnerstag" field.
  bool? _dayDonnerstag;
  bool get dayDonnerstag => _dayDonnerstag ?? false;
  set dayDonnerstag(bool? val) => _dayDonnerstag = val;

  bool hasDayDonnerstag() => _dayDonnerstag != null;

  // "dayFreitag" field.
  bool? _dayFreitag;
  bool get dayFreitag => _dayFreitag ?? false;
  set dayFreitag(bool? val) => _dayFreitag = val;

  bool hasDayFreitag() => _dayFreitag != null;

  // "daySamstag" field.
  bool? _daySamstag;
  bool get daySamstag => _daySamstag ?? false;
  set daySamstag(bool? val) => _daySamstag = val;

  bool hasDaySamstag() => _daySamstag != null;

  // "daySonntag" field.
  bool? _daySonntag;
  bool get daySonntag => _daySonntag ?? false;
  set daySonntag(bool? val) => _daySonntag = val;

  bool hasDaySonntag() => _daySonntag != null;

  // "DaysString" field.
  String? _daysString;
  String get daysString => _daysString ?? '';
  set daysString(String? val) => _daysString = val;

  bool hasDaysString() => _daysString != null;

  static DeviceLineStruct fromMap(Map<String, dynamic> data) =>
      DeviceLineStruct(
        raw: data['raw'] as String?,
        lineNumber: castToType<int>(data['lineNumber']),
        lineaddress: castToType<int>(data['lineaddress']),
        day: castToType<int>(data['day']),
        startHour: castToType<int>(data['startHour']),
        startMinute: castToType<int>(data['startMinute']),
        stopHour: castToType<int>(data['stopHour']),
        stopMinute: castToType<int>(data['stopMinute']),
        fan: castToType<int>(data['Fan']),
        veturiIntervall: castToType<int>(data['VeturiIntervall']),
        vennturiDuration: castToType<int>(data['VennturiDuration']),
        speed: castToType<int>(data['Speed']),
        intervall: castToType<int>(data['Intervall']),
        log: data['Log'] as String?,
        dayMontag: data['dayMontag'] as bool?,
        dayDienstag: data['dayDienstag'] as bool?,
        dayMittwoch: data['dayMittwoch'] as bool?,
        dayDonnerstag: data['dayDonnerstag'] as bool?,
        dayFreitag: data['dayFreitag'] as bool?,
        daySamstag: data['daySamstag'] as bool?,
        daySonntag: data['daySonntag'] as bool?,
        daysString: data['DaysString'] as String?,
      );

  static DeviceLineStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceLineStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'raw': _raw,
        'lineNumber': _lineNumber,
        'lineaddress': _lineaddress,
        'day': _day,
        'startHour': _startHour,
        'startMinute': _startMinute,
        'stopHour': _stopHour,
        'stopMinute': _stopMinute,
        'Fan': _fan,
        'VeturiIntervall': _veturiIntervall,
        'VennturiDuration': _vennturiDuration,
        'Speed': _speed,
        'Intervall': _intervall,
        'Log': _log,
        'dayMontag': _dayMontag,
        'dayDienstag': _dayDienstag,
        'dayMittwoch': _dayMittwoch,
        'dayDonnerstag': _dayDonnerstag,
        'dayFreitag': _dayFreitag,
        'daySamstag': _daySamstag,
        'daySonntag': _daySonntag,
        'DaysString': _daysString,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'raw': serializeParam(
          _raw,
          ParamType.String,
        ),
        'lineNumber': serializeParam(
          _lineNumber,
          ParamType.int,
        ),
        'lineaddress': serializeParam(
          _lineaddress,
          ParamType.int,
        ),
        'day': serializeParam(
          _day,
          ParamType.int,
        ),
        'startHour': serializeParam(
          _startHour,
          ParamType.int,
        ),
        'startMinute': serializeParam(
          _startMinute,
          ParamType.int,
        ),
        'stopHour': serializeParam(
          _stopHour,
          ParamType.int,
        ),
        'stopMinute': serializeParam(
          _stopMinute,
          ParamType.int,
        ),
        'Fan': serializeParam(
          _fan,
          ParamType.int,
        ),
        'VeturiIntervall': serializeParam(
          _veturiIntervall,
          ParamType.int,
        ),
        'VennturiDuration': serializeParam(
          _vennturiDuration,
          ParamType.int,
        ),
        'Speed': serializeParam(
          _speed,
          ParamType.int,
        ),
        'Intervall': serializeParam(
          _intervall,
          ParamType.int,
        ),
        'Log': serializeParam(
          _log,
          ParamType.String,
        ),
        'dayMontag': serializeParam(
          _dayMontag,
          ParamType.bool,
        ),
        'dayDienstag': serializeParam(
          _dayDienstag,
          ParamType.bool,
        ),
        'dayMittwoch': serializeParam(
          _dayMittwoch,
          ParamType.bool,
        ),
        'dayDonnerstag': serializeParam(
          _dayDonnerstag,
          ParamType.bool,
        ),
        'dayFreitag': serializeParam(
          _dayFreitag,
          ParamType.bool,
        ),
        'daySamstag': serializeParam(
          _daySamstag,
          ParamType.bool,
        ),
        'daySonntag': serializeParam(
          _daySonntag,
          ParamType.bool,
        ),
        'DaysString': serializeParam(
          _daysString,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceLineStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceLineStruct(
        raw: deserializeParam(
          data['raw'],
          ParamType.String,
          false,
        ),
        lineNumber: deserializeParam(
          data['lineNumber'],
          ParamType.int,
          false,
        ),
        lineaddress: deserializeParam(
          data['lineaddress'],
          ParamType.int,
          false,
        ),
        day: deserializeParam(
          data['day'],
          ParamType.int,
          false,
        ),
        startHour: deserializeParam(
          data['startHour'],
          ParamType.int,
          false,
        ),
        startMinute: deserializeParam(
          data['startMinute'],
          ParamType.int,
          false,
        ),
        stopHour: deserializeParam(
          data['stopHour'],
          ParamType.int,
          false,
        ),
        stopMinute: deserializeParam(
          data['stopMinute'],
          ParamType.int,
          false,
        ),
        fan: deserializeParam(
          data['Fan'],
          ParamType.int,
          false,
        ),
        veturiIntervall: deserializeParam(
          data['VeturiIntervall'],
          ParamType.int,
          false,
        ),
        vennturiDuration: deserializeParam(
          data['VennturiDuration'],
          ParamType.int,
          false,
        ),
        speed: deserializeParam(
          data['Speed'],
          ParamType.int,
          false,
        ),
        intervall: deserializeParam(
          data['Intervall'],
          ParamType.int,
          false,
        ),
        log: deserializeParam(
          data['Log'],
          ParamType.String,
          false,
        ),
        dayMontag: deserializeParam(
          data['dayMontag'],
          ParamType.bool,
          false,
        ),
        dayDienstag: deserializeParam(
          data['dayDienstag'],
          ParamType.bool,
          false,
        ),
        dayMittwoch: deserializeParam(
          data['dayMittwoch'],
          ParamType.bool,
          false,
        ),
        dayDonnerstag: deserializeParam(
          data['dayDonnerstag'],
          ParamType.bool,
          false,
        ),
        dayFreitag: deserializeParam(
          data['dayFreitag'],
          ParamType.bool,
          false,
        ),
        daySamstag: deserializeParam(
          data['daySamstag'],
          ParamType.bool,
          false,
        ),
        daySonntag: deserializeParam(
          data['daySonntag'],
          ParamType.bool,
          false,
        ),
        daysString: deserializeParam(
          data['DaysString'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceLineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceLineStruct &&
        raw == other.raw &&
        lineNumber == other.lineNumber &&
        lineaddress == other.lineaddress &&
        day == other.day &&
        startHour == other.startHour &&
        startMinute == other.startMinute &&
        stopHour == other.stopHour &&
        stopMinute == other.stopMinute &&
        fan == other.fan &&
        veturiIntervall == other.veturiIntervall &&
        vennturiDuration == other.vennturiDuration &&
        speed == other.speed &&
        intervall == other.intervall &&
        log == other.log &&
        dayMontag == other.dayMontag &&
        dayDienstag == other.dayDienstag &&
        dayMittwoch == other.dayMittwoch &&
        dayDonnerstag == other.dayDonnerstag &&
        dayFreitag == other.dayFreitag &&
        daySamstag == other.daySamstag &&
        daySonntag == other.daySonntag &&
        daysString == other.daysString;
  }

  @override
  int get hashCode => const ListEquality().hash([
        raw,
        lineNumber,
        lineaddress,
        day,
        startHour,
        startMinute,
        stopHour,
        stopMinute,
        fan,
        veturiIntervall,
        vennturiDuration,
        speed,
        intervall,
        log,
        dayMontag,
        dayDienstag,
        dayMittwoch,
        dayDonnerstag,
        dayFreitag,
        daySamstag,
        daySonntag,
        daysString
      ]);
}

DeviceLineStruct createDeviceLineStruct({
  String? raw,
  int? lineNumber,
  int? lineaddress,
  int? day,
  int? startHour,
  int? startMinute,
  int? stopHour,
  int? stopMinute,
  int? fan,
  int? veturiIntervall,
  int? vennturiDuration,
  int? speed,
  int? intervall,
  String? log,
  bool? dayMontag,
  bool? dayDienstag,
  bool? dayMittwoch,
  bool? dayDonnerstag,
  bool? dayFreitag,
  bool? daySamstag,
  bool? daySonntag,
  String? daysString,
}) =>
    DeviceLineStruct(
      raw: raw,
      lineNumber: lineNumber,
      lineaddress: lineaddress,
      day: day,
      startHour: startHour,
      startMinute: startMinute,
      stopHour: stopHour,
      stopMinute: stopMinute,
      fan: fan,
      veturiIntervall: veturiIntervall,
      vennturiDuration: vennturiDuration,
      speed: speed,
      intervall: intervall,
      log: log,
      dayMontag: dayMontag,
      dayDienstag: dayDienstag,
      dayMittwoch: dayMittwoch,
      dayDonnerstag: dayDonnerstag,
      dayFreitag: dayFreitag,
      daySamstag: daySamstag,
      daySonntag: daySonntag,
      daysString: daysString,
    );
