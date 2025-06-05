// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// info about the device
class DeviceInfoStruct extends BaseStruct {
  DeviceInfoStruct({
    /// the Type
    String? type,

    /// just a letter for the type
    String? typeLetter,

    /// the Alias
    String? alias,
    String? serial,
    String? deviceName,

    /// the current state
    String? info,

    /// the current pwm value
    String? pwm,
    bool? showFanSelector,
    bool? showPowerSelector,
    bool? showVenturiSelector,

    /// found devices for i.e.
    ///
    /// Start page
    int? countDevicesFound,
    String? appBrand,
    String? appStatusLine,
    bool? deviceButtonVissible,
    String? line01Raw,
    String? line01Description,
    bool? line01Vissible,
    String? line02Raw,
    String? line02Description,
    bool? line02Vissible,
    String? line03Raw,
    String? line03Description,
    bool? line03Vissible,
    String? line04Raw,
    String? line04Description,
    bool? line04Vissible,
    String? line05Raw,
    String? line05Description,
    bool? line05Vissible,
    int? currentLineDayInt,
    bool? currentLineDayBoolMo,
    bool? currentLineDayBoolDi,
    bool? currentLineDayBoolMi,
    bool? currentLineDayBoolDo,
    bool? currentLineDayBoolFr,
    bool? currentLineDayBoolSa,
    bool? currentLineDayBoolSo,
    int? currentLineStartHour,
    int? currentLineStartMinute,
    int? currentLineStopHour,
    int? currentLineStopMinute,
    int? currentLineFan,
    int? currentLineFanVenturi,
    int? currentLineNumber,
    int? currentLineVenturiInterval,
    int? currentLineVenturiDuration,
    int? currentLineSpeed,
    int? currentLineInterval,
    String? currentLineAddress,
    String? currentLineDayString,
    String? currentLineDayBin,
    String? currentLineDayByte,
    String? currentLineLog,
  })  : _type = type,
        _typeLetter = typeLetter,
        _alias = alias,
        _serial = serial,
        _deviceName = deviceName,
        _info = info,
        _pwm = pwm,
        _showFanSelector = showFanSelector,
        _showPowerSelector = showPowerSelector,
        _showVenturiSelector = showVenturiSelector,
        _countDevicesFound = countDevicesFound,
        _appBrand = appBrand,
        _appStatusLine = appStatusLine,
        _deviceButtonVissible = deviceButtonVissible,
        _line01Raw = line01Raw,
        _line01Description = line01Description,
        _line01Vissible = line01Vissible,
        _line02Raw = line02Raw,
        _line02Description = line02Description,
        _line02Vissible = line02Vissible,
        _line03Raw = line03Raw,
        _line03Description = line03Description,
        _line03Vissible = line03Vissible,
        _line04Raw = line04Raw,
        _line04Description = line04Description,
        _line04Vissible = line04Vissible,
        _line05Raw = line05Raw,
        _line05Description = line05Description,
        _line05Vissible = line05Vissible,
        _currentLineDayInt = currentLineDayInt,
        _currentLineDayBoolMo = currentLineDayBoolMo,
        _currentLineDayBoolDi = currentLineDayBoolDi,
        _currentLineDayBoolMi = currentLineDayBoolMi,
        _currentLineDayBoolDo = currentLineDayBoolDo,
        _currentLineDayBoolFr = currentLineDayBoolFr,
        _currentLineDayBoolSa = currentLineDayBoolSa,
        _currentLineDayBoolSo = currentLineDayBoolSo,
        _currentLineStartHour = currentLineStartHour,
        _currentLineStartMinute = currentLineStartMinute,
        _currentLineStopHour = currentLineStopHour,
        _currentLineStopMinute = currentLineStopMinute,
        _currentLineFan = currentLineFan,
        _currentLineFanVenturi = currentLineFanVenturi,
        _currentLineNumber = currentLineNumber,
        _currentLineVenturiInterval = currentLineVenturiInterval,
        _currentLineVenturiDuration = currentLineVenturiDuration,
        _currentLineSpeed = currentLineSpeed,
        _currentLineInterval = currentLineInterval,
        _currentLineAddress = currentLineAddress,
        _currentLineDayString = currentLineDayString,
        _currentLineDayBin = currentLineDayBin,
        _currentLineDayByte = currentLineDayByte,
        _currentLineLog = currentLineLog;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "TypeLetter" field.
  String? _typeLetter;
  String get typeLetter => _typeLetter ?? '';
  set typeLetter(String? val) => _typeLetter = val;

  bool hasTypeLetter() => _typeLetter != null;

  // "Alias" field.
  String? _alias;
  String get alias => _alias ?? '';
  set alias(String? val) => _alias = val;

  bool hasAlias() => _alias != null;

  // "Serial" field.
  String? _serial;
  String get serial => _serial ?? '';
  set serial(String? val) => _serial = val;

  bool hasSerial() => _serial != null;

  // "DeviceName" field.
  String? _deviceName;
  String get deviceName => _deviceName ?? 'no device';
  set deviceName(String? val) => _deviceName = val;

  bool hasDeviceName() => _deviceName != null;

  // "Info" field.
  String? _info;
  String get info => _info ?? '';
  set info(String? val) => _info = val;

  bool hasInfo() => _info != null;

  // "PWM" field.
  String? _pwm;
  String get pwm => _pwm ?? '';
  set pwm(String? val) => _pwm = val;

  bool hasPwm() => _pwm != null;

  // "ShowFanSelector" field.
  bool? _showFanSelector;
  bool get showFanSelector => _showFanSelector ?? false;
  set showFanSelector(bool? val) => _showFanSelector = val;

  bool hasShowFanSelector() => _showFanSelector != null;

  // "ShowPowerSelector" field.
  bool? _showPowerSelector;
  bool get showPowerSelector => _showPowerSelector ?? false;
  set showPowerSelector(bool? val) => _showPowerSelector = val;

  bool hasShowPowerSelector() => _showPowerSelector != null;

  // "ShowVenturiSelector" field.
  bool? _showVenturiSelector;
  bool get showVenturiSelector => _showVenturiSelector ?? false;
  set showVenturiSelector(bool? val) => _showVenturiSelector = val;

  bool hasShowVenturiSelector() => _showVenturiSelector != null;

  // "CountDevicesFound" field.
  int? _countDevicesFound;
  int get countDevicesFound => _countDevicesFound ?? 0;
  set countDevicesFound(int? val) => _countDevicesFound = val;

  void incrementCountDevicesFound(int amount) =>
      countDevicesFound = countDevicesFound + amount;

  bool hasCountDevicesFound() => _countDevicesFound != null;

  // "AppBrand" field.
  String? _appBrand;
  String get appBrand => _appBrand ?? 'Airscent';
  set appBrand(String? val) => _appBrand = val;

  bool hasAppBrand() => _appBrand != null;

  // "AppStatusLine" field.
  String? _appStatusLine;
  String get appStatusLine => _appStatusLine ?? '  ';
  set appStatusLine(String? val) => _appStatusLine = val;

  bool hasAppStatusLine() => _appStatusLine != null;

  // "DeviceButtonVissible" field.
  bool? _deviceButtonVissible;
  bool get deviceButtonVissible => _deviceButtonVissible ?? false;
  set deviceButtonVissible(bool? val) => _deviceButtonVissible = val;

  bool hasDeviceButtonVissible() => _deviceButtonVissible != null;

  // "Line01Raw" field.
  String? _line01Raw;
  String get line01Raw => _line01Raw ?? '-';
  set line01Raw(String? val) => _line01Raw = val;

  bool hasLine01Raw() => _line01Raw != null;

  // "Line01Description" field.
  String? _line01Description;
  String get line01Description => _line01Description ?? '--';
  set line01Description(String? val) => _line01Description = val;

  bool hasLine01Description() => _line01Description != null;

  // "Line01Vissible" field.
  bool? _line01Vissible;
  bool get line01Vissible => _line01Vissible ?? false;
  set line01Vissible(bool? val) => _line01Vissible = val;

  bool hasLine01Vissible() => _line01Vissible != null;

  // "Line02Raw" field.
  String? _line02Raw;
  String get line02Raw => _line02Raw ?? '-';
  set line02Raw(String? val) => _line02Raw = val;

  bool hasLine02Raw() => _line02Raw != null;

  // "Line02Description" field.
  String? _line02Description;
  String get line02Description => _line02Description ?? '--';
  set line02Description(String? val) => _line02Description = val;

  bool hasLine02Description() => _line02Description != null;

  // "Line02Vissible" field.
  bool? _line02Vissible;
  bool get line02Vissible => _line02Vissible ?? false;
  set line02Vissible(bool? val) => _line02Vissible = val;

  bool hasLine02Vissible() => _line02Vissible != null;

  // "Line03Raw" field.
  String? _line03Raw;
  String get line03Raw => _line03Raw ?? '-';
  set line03Raw(String? val) => _line03Raw = val;

  bool hasLine03Raw() => _line03Raw != null;

  // "Line03Description" field.
  String? _line03Description;
  String get line03Description => _line03Description ?? '--';
  set line03Description(String? val) => _line03Description = val;

  bool hasLine03Description() => _line03Description != null;

  // "Line03Vissible" field.
  bool? _line03Vissible;
  bool get line03Vissible => _line03Vissible ?? false;
  set line03Vissible(bool? val) => _line03Vissible = val;

  bool hasLine03Vissible() => _line03Vissible != null;

  // "Line04Raw" field.
  String? _line04Raw;
  String get line04Raw => _line04Raw ?? '-';
  set line04Raw(String? val) => _line04Raw = val;

  bool hasLine04Raw() => _line04Raw != null;

  // "Line04Description" field.
  String? _line04Description;
  String get line04Description => _line04Description ?? '--';
  set line04Description(String? val) => _line04Description = val;

  bool hasLine04Description() => _line04Description != null;

  // "Line04Vissible" field.
  bool? _line04Vissible;
  bool get line04Vissible => _line04Vissible ?? false;
  set line04Vissible(bool? val) => _line04Vissible = val;

  bool hasLine04Vissible() => _line04Vissible != null;

  // "Line05Raw" field.
  String? _line05Raw;
  String get line05Raw => _line05Raw ?? '-';
  set line05Raw(String? val) => _line05Raw = val;

  bool hasLine05Raw() => _line05Raw != null;

  // "Line05Description" field.
  String? _line05Description;
  String get line05Description => _line05Description ?? '--';
  set line05Description(String? val) => _line05Description = val;

  bool hasLine05Description() => _line05Description != null;

  // "Line05Vissible" field.
  bool? _line05Vissible;
  bool get line05Vissible => _line05Vissible ?? false;
  set line05Vissible(bool? val) => _line05Vissible = val;

  bool hasLine05Vissible() => _line05Vissible != null;

  // "CurrentLineDayInt" field.
  int? _currentLineDayInt;
  int get currentLineDayInt => _currentLineDayInt ?? 0;
  set currentLineDayInt(int? val) => _currentLineDayInt = val;

  void incrementCurrentLineDayInt(int amount) =>
      currentLineDayInt = currentLineDayInt + amount;

  bool hasCurrentLineDayInt() => _currentLineDayInt != null;

  // "CurrentLineDayBoolMo" field.
  bool? _currentLineDayBoolMo;
  bool get currentLineDayBoolMo => _currentLineDayBoolMo ?? false;
  set currentLineDayBoolMo(bool? val) => _currentLineDayBoolMo = val;

  bool hasCurrentLineDayBoolMo() => _currentLineDayBoolMo != null;

  // "CurrentLineDayBoolDi" field.
  bool? _currentLineDayBoolDi;
  bool get currentLineDayBoolDi => _currentLineDayBoolDi ?? false;
  set currentLineDayBoolDi(bool? val) => _currentLineDayBoolDi = val;

  bool hasCurrentLineDayBoolDi() => _currentLineDayBoolDi != null;

  // "CurrentLineDayBoolMi" field.
  bool? _currentLineDayBoolMi;
  bool get currentLineDayBoolMi => _currentLineDayBoolMi ?? false;
  set currentLineDayBoolMi(bool? val) => _currentLineDayBoolMi = val;

  bool hasCurrentLineDayBoolMi() => _currentLineDayBoolMi != null;

  // "CurrentLineDayBoolDo" field.
  bool? _currentLineDayBoolDo;
  bool get currentLineDayBoolDo => _currentLineDayBoolDo ?? false;
  set currentLineDayBoolDo(bool? val) => _currentLineDayBoolDo = val;

  bool hasCurrentLineDayBoolDo() => _currentLineDayBoolDo != null;

  // "CurrentLineDayBoolFr" field.
  bool? _currentLineDayBoolFr;
  bool get currentLineDayBoolFr => _currentLineDayBoolFr ?? false;
  set currentLineDayBoolFr(bool? val) => _currentLineDayBoolFr = val;

  bool hasCurrentLineDayBoolFr() => _currentLineDayBoolFr != null;

  // "CurrentLineDayBoolSa" field.
  bool? _currentLineDayBoolSa;
  bool get currentLineDayBoolSa => _currentLineDayBoolSa ?? false;
  set currentLineDayBoolSa(bool? val) => _currentLineDayBoolSa = val;

  bool hasCurrentLineDayBoolSa() => _currentLineDayBoolSa != null;

  // "CurrentLineDayBoolSo" field.
  bool? _currentLineDayBoolSo;
  bool get currentLineDayBoolSo => _currentLineDayBoolSo ?? false;
  set currentLineDayBoolSo(bool? val) => _currentLineDayBoolSo = val;

  bool hasCurrentLineDayBoolSo() => _currentLineDayBoolSo != null;

  // "CurrentLineStartHour" field.
  int? _currentLineStartHour;
  int get currentLineStartHour => _currentLineStartHour ?? 0;
  set currentLineStartHour(int? val) => _currentLineStartHour = val;

  void incrementCurrentLineStartHour(int amount) =>
      currentLineStartHour = currentLineStartHour + amount;

  bool hasCurrentLineStartHour() => _currentLineStartHour != null;

  // "CurrentLineStartMinute" field.
  int? _currentLineStartMinute;
  int get currentLineStartMinute => _currentLineStartMinute ?? 0;
  set currentLineStartMinute(int? val) => _currentLineStartMinute = val;

  void incrementCurrentLineStartMinute(int amount) =>
      currentLineStartMinute = currentLineStartMinute + amount;

  bool hasCurrentLineStartMinute() => _currentLineStartMinute != null;

  // "CurrentLineStopHour" field.
  int? _currentLineStopHour;
  int get currentLineStopHour => _currentLineStopHour ?? 0;
  set currentLineStopHour(int? val) => _currentLineStopHour = val;

  void incrementCurrentLineStopHour(int amount) =>
      currentLineStopHour = currentLineStopHour + amount;

  bool hasCurrentLineStopHour() => _currentLineStopHour != null;

  // "CurrentLineStopMinute" field.
  int? _currentLineStopMinute;
  int get currentLineStopMinute => _currentLineStopMinute ?? 0;
  set currentLineStopMinute(int? val) => _currentLineStopMinute = val;

  void incrementCurrentLineStopMinute(int amount) =>
      currentLineStopMinute = currentLineStopMinute + amount;

  bool hasCurrentLineStopMinute() => _currentLineStopMinute != null;

  // "CurrentLineFan" field.
  int? _currentLineFan;
  int get currentLineFan => _currentLineFan ?? 0;
  set currentLineFan(int? val) => _currentLineFan = val;

  void incrementCurrentLineFan(int amount) =>
      currentLineFan = currentLineFan + amount;

  bool hasCurrentLineFan() => _currentLineFan != null;

  // "CurrentLineFanVenturi" field.
  int? _currentLineFanVenturi;
  int get currentLineFanVenturi => _currentLineFanVenturi ?? 0;
  set currentLineFanVenturi(int? val) => _currentLineFanVenturi = val;

  void incrementCurrentLineFanVenturi(int amount) =>
      currentLineFanVenturi = currentLineFanVenturi + amount;

  bool hasCurrentLineFanVenturi() => _currentLineFanVenturi != null;

  // "CurrentLineNumber" field.
  int? _currentLineNumber;
  int get currentLineNumber => _currentLineNumber ?? 0;
  set currentLineNumber(int? val) => _currentLineNumber = val;

  void incrementCurrentLineNumber(int amount) =>
      currentLineNumber = currentLineNumber + amount;

  bool hasCurrentLineNumber() => _currentLineNumber != null;

  // "CurrentLineVenturiInterval" field.
  int? _currentLineVenturiInterval;
  int get currentLineVenturiInterval => _currentLineVenturiInterval ?? 0;
  set currentLineVenturiInterval(int? val) => _currentLineVenturiInterval = val;

  void incrementCurrentLineVenturiInterval(int amount) =>
      currentLineVenturiInterval = currentLineVenturiInterval + amount;

  bool hasCurrentLineVenturiInterval() => _currentLineVenturiInterval != null;

  // "CurrentLineVenturiDuration" field.
  int? _currentLineVenturiDuration;
  int get currentLineVenturiDuration => _currentLineVenturiDuration ?? 0;
  set currentLineVenturiDuration(int? val) => _currentLineVenturiDuration = val;

  void incrementCurrentLineVenturiDuration(int amount) =>
      currentLineVenturiDuration = currentLineVenturiDuration + amount;

  bool hasCurrentLineVenturiDuration() => _currentLineVenturiDuration != null;

  // "CurrentLineSpeed" field.
  int? _currentLineSpeed;
  int get currentLineSpeed => _currentLineSpeed ?? 100;
  set currentLineSpeed(int? val) => _currentLineSpeed = val;

  void incrementCurrentLineSpeed(int amount) =>
      currentLineSpeed = currentLineSpeed + amount;

  bool hasCurrentLineSpeed() => _currentLineSpeed != null;

  // "CurrentLineInterval" field.
  int? _currentLineInterval;
  int get currentLineInterval => _currentLineInterval ?? 0;
  set currentLineInterval(int? val) => _currentLineInterval = val;

  void incrementCurrentLineInterval(int amount) =>
      currentLineInterval = currentLineInterval + amount;

  bool hasCurrentLineInterval() => _currentLineInterval != null;

  // "CurrentLineAddress" field.
  String? _currentLineAddress;
  String get currentLineAddress => _currentLineAddress ?? '0';
  set currentLineAddress(String? val) => _currentLineAddress = val;

  bool hasCurrentLineAddress() => _currentLineAddress != null;

  // "CurrentLineDayString" field.
  String? _currentLineDayString;
  String get currentLineDayString => _currentLineDayString ?? '-';
  set currentLineDayString(String? val) => _currentLineDayString = val;

  bool hasCurrentLineDayString() => _currentLineDayString != null;

  // "CurrentLineDayBin" field.
  String? _currentLineDayBin;
  String get currentLineDayBin => _currentLineDayBin ?? '-';
  set currentLineDayBin(String? val) => _currentLineDayBin = val;

  bool hasCurrentLineDayBin() => _currentLineDayBin != null;

  // "CurrentLineDayByte" field.
  String? _currentLineDayByte;
  String get currentLineDayByte => _currentLineDayByte ?? '-';
  set currentLineDayByte(String? val) => _currentLineDayByte = val;

  bool hasCurrentLineDayByte() => _currentLineDayByte != null;

  // "CurrentLineLog" field.
  String? _currentLineLog;
  String get currentLineLog => _currentLineLog ?? '-';
  set currentLineLog(String? val) => _currentLineLog = val;

  bool hasCurrentLineLog() => _currentLineLog != null;

  static DeviceInfoStruct fromMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        type: data['Type'] as String?,
        typeLetter: data['TypeLetter'] as String?,
        alias: data['Alias'] as String?,
        serial: data['Serial'] as String?,
        deviceName: data['DeviceName'] as String?,
        info: data['Info'] as String?,
        pwm: data['PWM'] as String?,
        showFanSelector: data['ShowFanSelector'] as bool?,
        showPowerSelector: data['ShowPowerSelector'] as bool?,
        showVenturiSelector: data['ShowVenturiSelector'] as bool?,
        countDevicesFound: castToType<int>(data['CountDevicesFound']),
        appBrand: data['AppBrand'] as String?,
        appStatusLine: data['AppStatusLine'] as String?,
        deviceButtonVissible: data['DeviceButtonVissible'] as bool?,
        line01Raw: data['Line01Raw'] as String?,
        line01Description: data['Line01Description'] as String?,
        line01Vissible: data['Line01Vissible'] as bool?,
        line02Raw: data['Line02Raw'] as String?,
        line02Description: data['Line02Description'] as String?,
        line02Vissible: data['Line02Vissible'] as bool?,
        line03Raw: data['Line03Raw'] as String?,
        line03Description: data['Line03Description'] as String?,
        line03Vissible: data['Line03Vissible'] as bool?,
        line04Raw: data['Line04Raw'] as String?,
        line04Description: data['Line04Description'] as String?,
        line04Vissible: data['Line04Vissible'] as bool?,
        line05Raw: data['Line05Raw'] as String?,
        line05Description: data['Line05Description'] as String?,
        line05Vissible: data['Line05Vissible'] as bool?,
        currentLineDayInt: castToType<int>(data['CurrentLineDayInt']),
        currentLineDayBoolMo: data['CurrentLineDayBoolMo'] as bool?,
        currentLineDayBoolDi: data['CurrentLineDayBoolDi'] as bool?,
        currentLineDayBoolMi: data['CurrentLineDayBoolMi'] as bool?,
        currentLineDayBoolDo: data['CurrentLineDayBoolDo'] as bool?,
        currentLineDayBoolFr: data['CurrentLineDayBoolFr'] as bool?,
        currentLineDayBoolSa: data['CurrentLineDayBoolSa'] as bool?,
        currentLineDayBoolSo: data['CurrentLineDayBoolSo'] as bool?,
        currentLineStartHour: castToType<int>(data['CurrentLineStartHour']),
        currentLineStartMinute: castToType<int>(data['CurrentLineStartMinute']),
        currentLineStopHour: castToType<int>(data['CurrentLineStopHour']),
        currentLineStopMinute: castToType<int>(data['CurrentLineStopMinute']),
        currentLineFan: castToType<int>(data['CurrentLineFan']),
        currentLineFanVenturi: castToType<int>(data['CurrentLineFanVenturi']),
        currentLineNumber: castToType<int>(data['CurrentLineNumber']),
        currentLineVenturiInterval:
            castToType<int>(data['CurrentLineVenturiInterval']),
        currentLineVenturiDuration:
            castToType<int>(data['CurrentLineVenturiDuration']),
        currentLineSpeed: castToType<int>(data['CurrentLineSpeed']),
        currentLineInterval: castToType<int>(data['CurrentLineInterval']),
        currentLineAddress: data['CurrentLineAddress'] as String?,
        currentLineDayString: data['CurrentLineDayString'] as String?,
        currentLineDayBin: data['CurrentLineDayBin'] as String?,
        currentLineDayByte: data['CurrentLineDayByte'] as String?,
        currentLineLog: data['CurrentLineLog'] as String?,
      );

  static DeviceInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Type': _type,
        'TypeLetter': _typeLetter,
        'Alias': _alias,
        'Serial': _serial,
        'DeviceName': _deviceName,
        'Info': _info,
        'PWM': _pwm,
        'ShowFanSelector': _showFanSelector,
        'ShowPowerSelector': _showPowerSelector,
        'ShowVenturiSelector': _showVenturiSelector,
        'CountDevicesFound': _countDevicesFound,
        'AppBrand': _appBrand,
        'AppStatusLine': _appStatusLine,
        'DeviceButtonVissible': _deviceButtonVissible,
        'Line01Raw': _line01Raw,
        'Line01Description': _line01Description,
        'Line01Vissible': _line01Vissible,
        'Line02Raw': _line02Raw,
        'Line02Description': _line02Description,
        'Line02Vissible': _line02Vissible,
        'Line03Raw': _line03Raw,
        'Line03Description': _line03Description,
        'Line03Vissible': _line03Vissible,
        'Line04Raw': _line04Raw,
        'Line04Description': _line04Description,
        'Line04Vissible': _line04Vissible,
        'Line05Raw': _line05Raw,
        'Line05Description': _line05Description,
        'Line05Vissible': _line05Vissible,
        'CurrentLineDayInt': _currentLineDayInt,
        'CurrentLineDayBoolMo': _currentLineDayBoolMo,
        'CurrentLineDayBoolDi': _currentLineDayBoolDi,
        'CurrentLineDayBoolMi': _currentLineDayBoolMi,
        'CurrentLineDayBoolDo': _currentLineDayBoolDo,
        'CurrentLineDayBoolFr': _currentLineDayBoolFr,
        'CurrentLineDayBoolSa': _currentLineDayBoolSa,
        'CurrentLineDayBoolSo': _currentLineDayBoolSo,
        'CurrentLineStartHour': _currentLineStartHour,
        'CurrentLineStartMinute': _currentLineStartMinute,
        'CurrentLineStopHour': _currentLineStopHour,
        'CurrentLineStopMinute': _currentLineStopMinute,
        'CurrentLineFan': _currentLineFan,
        'CurrentLineFanVenturi': _currentLineFanVenturi,
        'CurrentLineNumber': _currentLineNumber,
        'CurrentLineVenturiInterval': _currentLineVenturiInterval,
        'CurrentLineVenturiDuration': _currentLineVenturiDuration,
        'CurrentLineSpeed': _currentLineSpeed,
        'CurrentLineInterval': _currentLineInterval,
        'CurrentLineAddress': _currentLineAddress,
        'CurrentLineDayString': _currentLineDayString,
        'CurrentLineDayBin': _currentLineDayBin,
        'CurrentLineDayByte': _currentLineDayByte,
        'CurrentLineLog': _currentLineLog,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Type': serializeParam(
          _type,
          ParamType.String,
        ),
        'TypeLetter': serializeParam(
          _typeLetter,
          ParamType.String,
        ),
        'Alias': serializeParam(
          _alias,
          ParamType.String,
        ),
        'Serial': serializeParam(
          _serial,
          ParamType.String,
        ),
        'DeviceName': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'Info': serializeParam(
          _info,
          ParamType.String,
        ),
        'PWM': serializeParam(
          _pwm,
          ParamType.String,
        ),
        'ShowFanSelector': serializeParam(
          _showFanSelector,
          ParamType.bool,
        ),
        'ShowPowerSelector': serializeParam(
          _showPowerSelector,
          ParamType.bool,
        ),
        'ShowVenturiSelector': serializeParam(
          _showVenturiSelector,
          ParamType.bool,
        ),
        'CountDevicesFound': serializeParam(
          _countDevicesFound,
          ParamType.int,
        ),
        'AppBrand': serializeParam(
          _appBrand,
          ParamType.String,
        ),
        'AppStatusLine': serializeParam(
          _appStatusLine,
          ParamType.String,
        ),
        'DeviceButtonVissible': serializeParam(
          _deviceButtonVissible,
          ParamType.bool,
        ),
        'Line01Raw': serializeParam(
          _line01Raw,
          ParamType.String,
        ),
        'Line01Description': serializeParam(
          _line01Description,
          ParamType.String,
        ),
        'Line01Vissible': serializeParam(
          _line01Vissible,
          ParamType.bool,
        ),
        'Line02Raw': serializeParam(
          _line02Raw,
          ParamType.String,
        ),
        'Line02Description': serializeParam(
          _line02Description,
          ParamType.String,
        ),
        'Line02Vissible': serializeParam(
          _line02Vissible,
          ParamType.bool,
        ),
        'Line03Raw': serializeParam(
          _line03Raw,
          ParamType.String,
        ),
        'Line03Description': serializeParam(
          _line03Description,
          ParamType.String,
        ),
        'Line03Vissible': serializeParam(
          _line03Vissible,
          ParamType.bool,
        ),
        'Line04Raw': serializeParam(
          _line04Raw,
          ParamType.String,
        ),
        'Line04Description': serializeParam(
          _line04Description,
          ParamType.String,
        ),
        'Line04Vissible': serializeParam(
          _line04Vissible,
          ParamType.bool,
        ),
        'Line05Raw': serializeParam(
          _line05Raw,
          ParamType.String,
        ),
        'Line05Description': serializeParam(
          _line05Description,
          ParamType.String,
        ),
        'Line05Vissible': serializeParam(
          _line05Vissible,
          ParamType.bool,
        ),
        'CurrentLineDayInt': serializeParam(
          _currentLineDayInt,
          ParamType.int,
        ),
        'CurrentLineDayBoolMo': serializeParam(
          _currentLineDayBoolMo,
          ParamType.bool,
        ),
        'CurrentLineDayBoolDi': serializeParam(
          _currentLineDayBoolDi,
          ParamType.bool,
        ),
        'CurrentLineDayBoolMi': serializeParam(
          _currentLineDayBoolMi,
          ParamType.bool,
        ),
        'CurrentLineDayBoolDo': serializeParam(
          _currentLineDayBoolDo,
          ParamType.bool,
        ),
        'CurrentLineDayBoolFr': serializeParam(
          _currentLineDayBoolFr,
          ParamType.bool,
        ),
        'CurrentLineDayBoolSa': serializeParam(
          _currentLineDayBoolSa,
          ParamType.bool,
        ),
        'CurrentLineDayBoolSo': serializeParam(
          _currentLineDayBoolSo,
          ParamType.bool,
        ),
        'CurrentLineStartHour': serializeParam(
          _currentLineStartHour,
          ParamType.int,
        ),
        'CurrentLineStartMinute': serializeParam(
          _currentLineStartMinute,
          ParamType.int,
        ),
        'CurrentLineStopHour': serializeParam(
          _currentLineStopHour,
          ParamType.int,
        ),
        'CurrentLineStopMinute': serializeParam(
          _currentLineStopMinute,
          ParamType.int,
        ),
        'CurrentLineFan': serializeParam(
          _currentLineFan,
          ParamType.int,
        ),
        'CurrentLineFanVenturi': serializeParam(
          _currentLineFanVenturi,
          ParamType.int,
        ),
        'CurrentLineNumber': serializeParam(
          _currentLineNumber,
          ParamType.int,
        ),
        'CurrentLineVenturiInterval': serializeParam(
          _currentLineVenturiInterval,
          ParamType.int,
        ),
        'CurrentLineVenturiDuration': serializeParam(
          _currentLineVenturiDuration,
          ParamType.int,
        ),
        'CurrentLineSpeed': serializeParam(
          _currentLineSpeed,
          ParamType.int,
        ),
        'CurrentLineInterval': serializeParam(
          _currentLineInterval,
          ParamType.int,
        ),
        'CurrentLineAddress': serializeParam(
          _currentLineAddress,
          ParamType.String,
        ),
        'CurrentLineDayString': serializeParam(
          _currentLineDayString,
          ParamType.String,
        ),
        'CurrentLineDayBin': serializeParam(
          _currentLineDayBin,
          ParamType.String,
        ),
        'CurrentLineDayByte': serializeParam(
          _currentLineDayByte,
          ParamType.String,
        ),
        'CurrentLineLog': serializeParam(
          _currentLineLog,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        type: deserializeParam(
          data['Type'],
          ParamType.String,
          false,
        ),
        typeLetter: deserializeParam(
          data['TypeLetter'],
          ParamType.String,
          false,
        ),
        alias: deserializeParam(
          data['Alias'],
          ParamType.String,
          false,
        ),
        serial: deserializeParam(
          data['Serial'],
          ParamType.String,
          false,
        ),
        deviceName: deserializeParam(
          data['DeviceName'],
          ParamType.String,
          false,
        ),
        info: deserializeParam(
          data['Info'],
          ParamType.String,
          false,
        ),
        pwm: deserializeParam(
          data['PWM'],
          ParamType.String,
          false,
        ),
        showFanSelector: deserializeParam(
          data['ShowFanSelector'],
          ParamType.bool,
          false,
        ),
        showPowerSelector: deserializeParam(
          data['ShowPowerSelector'],
          ParamType.bool,
          false,
        ),
        showVenturiSelector: deserializeParam(
          data['ShowVenturiSelector'],
          ParamType.bool,
          false,
        ),
        countDevicesFound: deserializeParam(
          data['CountDevicesFound'],
          ParamType.int,
          false,
        ),
        appBrand: deserializeParam(
          data['AppBrand'],
          ParamType.String,
          false,
        ),
        appStatusLine: deserializeParam(
          data['AppStatusLine'],
          ParamType.String,
          false,
        ),
        deviceButtonVissible: deserializeParam(
          data['DeviceButtonVissible'],
          ParamType.bool,
          false,
        ),
        line01Raw: deserializeParam(
          data['Line01Raw'],
          ParamType.String,
          false,
        ),
        line01Description: deserializeParam(
          data['Line01Description'],
          ParamType.String,
          false,
        ),
        line01Vissible: deserializeParam(
          data['Line01Vissible'],
          ParamType.bool,
          false,
        ),
        line02Raw: deserializeParam(
          data['Line02Raw'],
          ParamType.String,
          false,
        ),
        line02Description: deserializeParam(
          data['Line02Description'],
          ParamType.String,
          false,
        ),
        line02Vissible: deserializeParam(
          data['Line02Vissible'],
          ParamType.bool,
          false,
        ),
        line03Raw: deserializeParam(
          data['Line03Raw'],
          ParamType.String,
          false,
        ),
        line03Description: deserializeParam(
          data['Line03Description'],
          ParamType.String,
          false,
        ),
        line03Vissible: deserializeParam(
          data['Line03Vissible'],
          ParamType.bool,
          false,
        ),
        line04Raw: deserializeParam(
          data['Line04Raw'],
          ParamType.String,
          false,
        ),
        line04Description: deserializeParam(
          data['Line04Description'],
          ParamType.String,
          false,
        ),
        line04Vissible: deserializeParam(
          data['Line04Vissible'],
          ParamType.bool,
          false,
        ),
        line05Raw: deserializeParam(
          data['Line05Raw'],
          ParamType.String,
          false,
        ),
        line05Description: deserializeParam(
          data['Line05Description'],
          ParamType.String,
          false,
        ),
        line05Vissible: deserializeParam(
          data['Line05Vissible'],
          ParamType.bool,
          false,
        ),
        currentLineDayInt: deserializeParam(
          data['CurrentLineDayInt'],
          ParamType.int,
          false,
        ),
        currentLineDayBoolMo: deserializeParam(
          data['CurrentLineDayBoolMo'],
          ParamType.bool,
          false,
        ),
        currentLineDayBoolDi: deserializeParam(
          data['CurrentLineDayBoolDi'],
          ParamType.bool,
          false,
        ),
        currentLineDayBoolMi: deserializeParam(
          data['CurrentLineDayBoolMi'],
          ParamType.bool,
          false,
        ),
        currentLineDayBoolDo: deserializeParam(
          data['CurrentLineDayBoolDo'],
          ParamType.bool,
          false,
        ),
        currentLineDayBoolFr: deserializeParam(
          data['CurrentLineDayBoolFr'],
          ParamType.bool,
          false,
        ),
        currentLineDayBoolSa: deserializeParam(
          data['CurrentLineDayBoolSa'],
          ParamType.bool,
          false,
        ),
        currentLineDayBoolSo: deserializeParam(
          data['CurrentLineDayBoolSo'],
          ParamType.bool,
          false,
        ),
        currentLineStartHour: deserializeParam(
          data['CurrentLineStartHour'],
          ParamType.int,
          false,
        ),
        currentLineStartMinute: deserializeParam(
          data['CurrentLineStartMinute'],
          ParamType.int,
          false,
        ),
        currentLineStopHour: deserializeParam(
          data['CurrentLineStopHour'],
          ParamType.int,
          false,
        ),
        currentLineStopMinute: deserializeParam(
          data['CurrentLineStopMinute'],
          ParamType.int,
          false,
        ),
        currentLineFan: deserializeParam(
          data['CurrentLineFan'],
          ParamType.int,
          false,
        ),
        currentLineFanVenturi: deserializeParam(
          data['CurrentLineFanVenturi'],
          ParamType.int,
          false,
        ),
        currentLineNumber: deserializeParam(
          data['CurrentLineNumber'],
          ParamType.int,
          false,
        ),
        currentLineVenturiInterval: deserializeParam(
          data['CurrentLineVenturiInterval'],
          ParamType.int,
          false,
        ),
        currentLineVenturiDuration: deserializeParam(
          data['CurrentLineVenturiDuration'],
          ParamType.int,
          false,
        ),
        currentLineSpeed: deserializeParam(
          data['CurrentLineSpeed'],
          ParamType.int,
          false,
        ),
        currentLineInterval: deserializeParam(
          data['CurrentLineInterval'],
          ParamType.int,
          false,
        ),
        currentLineAddress: deserializeParam(
          data['CurrentLineAddress'],
          ParamType.String,
          false,
        ),
        currentLineDayString: deserializeParam(
          data['CurrentLineDayString'],
          ParamType.String,
          false,
        ),
        currentLineDayBin: deserializeParam(
          data['CurrentLineDayBin'],
          ParamType.String,
          false,
        ),
        currentLineDayByte: deserializeParam(
          data['CurrentLineDayByte'],
          ParamType.String,
          false,
        ),
        currentLineLog: deserializeParam(
          data['CurrentLineLog'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceInfoStruct &&
        type == other.type &&
        typeLetter == other.typeLetter &&
        alias == other.alias &&
        serial == other.serial &&
        deviceName == other.deviceName &&
        info == other.info &&
        pwm == other.pwm &&
        showFanSelector == other.showFanSelector &&
        showPowerSelector == other.showPowerSelector &&
        showVenturiSelector == other.showVenturiSelector &&
        countDevicesFound == other.countDevicesFound &&
        appBrand == other.appBrand &&
        appStatusLine == other.appStatusLine &&
        deviceButtonVissible == other.deviceButtonVissible &&
        line01Raw == other.line01Raw &&
        line01Description == other.line01Description &&
        line01Vissible == other.line01Vissible &&
        line02Raw == other.line02Raw &&
        line02Description == other.line02Description &&
        line02Vissible == other.line02Vissible &&
        line03Raw == other.line03Raw &&
        line03Description == other.line03Description &&
        line03Vissible == other.line03Vissible &&
        line04Raw == other.line04Raw &&
        line04Description == other.line04Description &&
        line04Vissible == other.line04Vissible &&
        line05Raw == other.line05Raw &&
        line05Description == other.line05Description &&
        line05Vissible == other.line05Vissible &&
        currentLineDayInt == other.currentLineDayInt &&
        currentLineDayBoolMo == other.currentLineDayBoolMo &&
        currentLineDayBoolDi == other.currentLineDayBoolDi &&
        currentLineDayBoolMi == other.currentLineDayBoolMi &&
        currentLineDayBoolDo == other.currentLineDayBoolDo &&
        currentLineDayBoolFr == other.currentLineDayBoolFr &&
        currentLineDayBoolSa == other.currentLineDayBoolSa &&
        currentLineDayBoolSo == other.currentLineDayBoolSo &&
        currentLineStartHour == other.currentLineStartHour &&
        currentLineStartMinute == other.currentLineStartMinute &&
        currentLineStopHour == other.currentLineStopHour &&
        currentLineStopMinute == other.currentLineStopMinute &&
        currentLineFan == other.currentLineFan &&
        currentLineFanVenturi == other.currentLineFanVenturi &&
        currentLineNumber == other.currentLineNumber &&
        currentLineVenturiInterval == other.currentLineVenturiInterval &&
        currentLineVenturiDuration == other.currentLineVenturiDuration &&
        currentLineSpeed == other.currentLineSpeed &&
        currentLineInterval == other.currentLineInterval &&
        currentLineAddress == other.currentLineAddress &&
        currentLineDayString == other.currentLineDayString &&
        currentLineDayBin == other.currentLineDayBin &&
        currentLineDayByte == other.currentLineDayByte &&
        currentLineLog == other.currentLineLog;
  }

  @override
  int get hashCode => const ListEquality().hash([
        type,
        typeLetter,
        alias,
        serial,
        deviceName,
        info,
        pwm,
        showFanSelector,
        showPowerSelector,
        showVenturiSelector,
        countDevicesFound,
        appBrand,
        appStatusLine,
        deviceButtonVissible,
        line01Raw,
        line01Description,
        line01Vissible,
        line02Raw,
        line02Description,
        line02Vissible,
        line03Raw,
        line03Description,
        line03Vissible,
        line04Raw,
        line04Description,
        line04Vissible,
        line05Raw,
        line05Description,
        line05Vissible,
        currentLineDayInt,
        currentLineDayBoolMo,
        currentLineDayBoolDi,
        currentLineDayBoolMi,
        currentLineDayBoolDo,
        currentLineDayBoolFr,
        currentLineDayBoolSa,
        currentLineDayBoolSo,
        currentLineStartHour,
        currentLineStartMinute,
        currentLineStopHour,
        currentLineStopMinute,
        currentLineFan,
        currentLineFanVenturi,
        currentLineNumber,
        currentLineVenturiInterval,
        currentLineVenturiDuration,
        currentLineSpeed,
        currentLineInterval,
        currentLineAddress,
        currentLineDayString,
        currentLineDayBin,
        currentLineDayByte,
        currentLineLog
      ]);
}

DeviceInfoStruct createDeviceInfoStruct({
  String? type,
  String? typeLetter,
  String? alias,
  String? serial,
  String? deviceName,
  String? info,
  String? pwm,
  bool? showFanSelector,
  bool? showPowerSelector,
  bool? showVenturiSelector,
  int? countDevicesFound,
  String? appBrand,
  String? appStatusLine,
  bool? deviceButtonVissible,
  String? line01Raw,
  String? line01Description,
  bool? line01Vissible,
  String? line02Raw,
  String? line02Description,
  bool? line02Vissible,
  String? line03Raw,
  String? line03Description,
  bool? line03Vissible,
  String? line04Raw,
  String? line04Description,
  bool? line04Vissible,
  String? line05Raw,
  String? line05Description,
  bool? line05Vissible,
  int? currentLineDayInt,
  bool? currentLineDayBoolMo,
  bool? currentLineDayBoolDi,
  bool? currentLineDayBoolMi,
  bool? currentLineDayBoolDo,
  bool? currentLineDayBoolFr,
  bool? currentLineDayBoolSa,
  bool? currentLineDayBoolSo,
  int? currentLineStartHour,
  int? currentLineStartMinute,
  int? currentLineStopHour,
  int? currentLineStopMinute,
  int? currentLineFan,
  int? currentLineFanVenturi,
  int? currentLineNumber,
  int? currentLineVenturiInterval,
  int? currentLineVenturiDuration,
  int? currentLineSpeed,
  int? currentLineInterval,
  String? currentLineAddress,
  String? currentLineDayString,
  String? currentLineDayBin,
  String? currentLineDayByte,
  String? currentLineLog,
}) =>
    DeviceInfoStruct(
      type: type,
      typeLetter: typeLetter,
      alias: alias,
      serial: serial,
      deviceName: deviceName,
      info: info,
      pwm: pwm,
      showFanSelector: showFanSelector,
      showPowerSelector: showPowerSelector,
      showVenturiSelector: showVenturiSelector,
      countDevicesFound: countDevicesFound,
      appBrand: appBrand,
      appStatusLine: appStatusLine,
      deviceButtonVissible: deviceButtonVissible,
      line01Raw: line01Raw,
      line01Description: line01Description,
      line01Vissible: line01Vissible,
      line02Raw: line02Raw,
      line02Description: line02Description,
      line02Vissible: line02Vissible,
      line03Raw: line03Raw,
      line03Description: line03Description,
      line03Vissible: line03Vissible,
      line04Raw: line04Raw,
      line04Description: line04Description,
      line04Vissible: line04Vissible,
      line05Raw: line05Raw,
      line05Description: line05Description,
      line05Vissible: line05Vissible,
      currentLineDayInt: currentLineDayInt,
      currentLineDayBoolMo: currentLineDayBoolMo,
      currentLineDayBoolDi: currentLineDayBoolDi,
      currentLineDayBoolMi: currentLineDayBoolMi,
      currentLineDayBoolDo: currentLineDayBoolDo,
      currentLineDayBoolFr: currentLineDayBoolFr,
      currentLineDayBoolSa: currentLineDayBoolSa,
      currentLineDayBoolSo: currentLineDayBoolSo,
      currentLineStartHour: currentLineStartHour,
      currentLineStartMinute: currentLineStartMinute,
      currentLineStopHour: currentLineStopHour,
      currentLineStopMinute: currentLineStopMinute,
      currentLineFan: currentLineFan,
      currentLineFanVenturi: currentLineFanVenturi,
      currentLineNumber: currentLineNumber,
      currentLineVenturiInterval: currentLineVenturiInterval,
      currentLineVenturiDuration: currentLineVenturiDuration,
      currentLineSpeed: currentLineSpeed,
      currentLineInterval: currentLineInterval,
      currentLineAddress: currentLineAddress,
      currentLineDayString: currentLineDayString,
      currentLineDayBin: currentLineDayBin,
      currentLineDayByte: currentLineDayByte,
      currentLineLog: currentLineLog,
    );
