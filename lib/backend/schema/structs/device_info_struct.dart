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
    String? line06Raw,
    String? line06Description,
    bool? line06Vissible,
    String? line07Raw,
    String? line07Description,
    bool? line07Vissible,
    String? line08Raw,
    String? line08Description,
    bool? line08Vissible,
    String? line09Raw,
    String? line09Description,
    bool? line09Vissible,
    String? line10Raw,
    String? line10Description,
    bool? line10Vissible,
    String? line11Raw,
    String? line11Description,
    bool? line11Vissible,
    String? line12Raw,
    String? line12Description,
    bool? line12Vissible,
    String? line13Raw,
    String? line13Description,
    bool? line13Vissible,
    String? line14Raw,
    String? line14Description,
    bool? line14Vissible,
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
    bool? currentLineIsLast,
    String? buildDate,
    String? buildVersion,
    int? linesTotal,
    int? lastLineNumber,
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
        _line06Raw = line06Raw,
        _line06Description = line06Description,
        _line06Vissible = line06Vissible,
        _line07Raw = line07Raw,
        _line07Description = line07Description,
        _line07Vissible = line07Vissible,
        _line08Raw = line08Raw,
        _line08Description = line08Description,
        _line08Vissible = line08Vissible,
        _line09Raw = line09Raw,
        _line09Description = line09Description,
        _line09Vissible = line09Vissible,
        _line10Raw = line10Raw,
        _line10Description = line10Description,
        _line10Vissible = line10Vissible,
        _line11Raw = line11Raw,
        _line11Description = line11Description,
        _line11Vissible = line11Vissible,
        _line12Raw = line12Raw,
        _line12Description = line12Description,
        _line12Vissible = line12Vissible,
        _line13Raw = line13Raw,
        _line13Description = line13Description,
        _line13Vissible = line13Vissible,
        _line14Raw = line14Raw,
        _line14Description = line14Description,
        _line14Vissible = line14Vissible,
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
        _currentLineLog = currentLineLog,
        _currentLineIsLast = currentLineIsLast,
        _buildDate = buildDate,
        _buildVersion = buildVersion,
        _linesTotal = linesTotal,
        _lastLineNumber = lastLineNumber;

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

  // "Line06Raw" field.
  String? _line06Raw;
  String get line06Raw => _line06Raw ?? '-';
  set line06Raw(String? val) => _line06Raw = val;

  bool hasLine06Raw() => _line06Raw != null;

  // "Line06Description" field.
  String? _line06Description;
  String get line06Description => _line06Description ?? '--';
  set line06Description(String? val) => _line06Description = val;

  bool hasLine06Description() => _line06Description != null;

  // "Line06Vissible" field.
  bool? _line06Vissible;
  bool get line06Vissible => _line06Vissible ?? false;
  set line06Vissible(bool? val) => _line06Vissible = val;

  bool hasLine06Vissible() => _line06Vissible != null;

  // "Line07Raw" field.
  String? _line07Raw;
  String get line07Raw => _line07Raw ?? '-';
  set line07Raw(String? val) => _line07Raw = val;

  bool hasLine07Raw() => _line07Raw != null;

  // "Line07Description" field.
  String? _line07Description;
  String get line07Description => _line07Description ?? '-';
  set line07Description(String? val) => _line07Description = val;

  bool hasLine07Description() => _line07Description != null;

  // "Line07Vissible" field.
  bool? _line07Vissible;
  bool get line07Vissible => _line07Vissible ?? false;
  set line07Vissible(bool? val) => _line07Vissible = val;

  bool hasLine07Vissible() => _line07Vissible != null;

  // "Line08Raw" field.
  String? _line08Raw;
  String get line08Raw => _line08Raw ?? '-';
  set line08Raw(String? val) => _line08Raw = val;

  bool hasLine08Raw() => _line08Raw != null;

  // "Line08Description" field.
  String? _line08Description;
  String get line08Description => _line08Description ?? '-';
  set line08Description(String? val) => _line08Description = val;

  bool hasLine08Description() => _line08Description != null;

  // "Line08Vissible" field.
  bool? _line08Vissible;
  bool get line08Vissible => _line08Vissible ?? false;
  set line08Vissible(bool? val) => _line08Vissible = val;

  bool hasLine08Vissible() => _line08Vissible != null;

  // "Line09Raw" field.
  String? _line09Raw;
  String get line09Raw => _line09Raw ?? '-';
  set line09Raw(String? val) => _line09Raw = val;

  bool hasLine09Raw() => _line09Raw != null;

  // "Line09Description" field.
  String? _line09Description;
  String get line09Description => _line09Description ?? '-';
  set line09Description(String? val) => _line09Description = val;

  bool hasLine09Description() => _line09Description != null;

  // "Line09Vissible" field.
  bool? _line09Vissible;
  bool get line09Vissible => _line09Vissible ?? false;
  set line09Vissible(bool? val) => _line09Vissible = val;

  bool hasLine09Vissible() => _line09Vissible != null;

  // "Line10Raw" field.
  String? _line10Raw;
  String get line10Raw => _line10Raw ?? '-';
  set line10Raw(String? val) => _line10Raw = val;

  bool hasLine10Raw() => _line10Raw != null;

  // "Line10Description" field.
  String? _line10Description;
  String get line10Description => _line10Description ?? '-';
  set line10Description(String? val) => _line10Description = val;

  bool hasLine10Description() => _line10Description != null;

  // "Line10Vissible" field.
  bool? _line10Vissible;
  bool get line10Vissible => _line10Vissible ?? false;
  set line10Vissible(bool? val) => _line10Vissible = val;

  bool hasLine10Vissible() => _line10Vissible != null;

  // "Line11Raw" field.
  String? _line11Raw;
  String get line11Raw => _line11Raw ?? '-';
  set line11Raw(String? val) => _line11Raw = val;

  bool hasLine11Raw() => _line11Raw != null;

  // "Line11Description" field.
  String? _line11Description;
  String get line11Description => _line11Description ?? '-';
  set line11Description(String? val) => _line11Description = val;

  bool hasLine11Description() => _line11Description != null;

  // "Line11Vissible" field.
  bool? _line11Vissible;
  bool get line11Vissible => _line11Vissible ?? false;
  set line11Vissible(bool? val) => _line11Vissible = val;

  bool hasLine11Vissible() => _line11Vissible != null;

  // "Line12Raw" field.
  String? _line12Raw;
  String get line12Raw => _line12Raw ?? '-';
  set line12Raw(String? val) => _line12Raw = val;

  bool hasLine12Raw() => _line12Raw != null;

  // "Line12Description" field.
  String? _line12Description;
  String get line12Description => _line12Description ?? '-';
  set line12Description(String? val) => _line12Description = val;

  bool hasLine12Description() => _line12Description != null;

  // "Line12Vissible" field.
  bool? _line12Vissible;
  bool get line12Vissible => _line12Vissible ?? false;
  set line12Vissible(bool? val) => _line12Vissible = val;

  bool hasLine12Vissible() => _line12Vissible != null;

  // "Line13Raw" field.
  String? _line13Raw;
  String get line13Raw => _line13Raw ?? '-';
  set line13Raw(String? val) => _line13Raw = val;

  bool hasLine13Raw() => _line13Raw != null;

  // "Line13Description" field.
  String? _line13Description;
  String get line13Description => _line13Description ?? '-';
  set line13Description(String? val) => _line13Description = val;

  bool hasLine13Description() => _line13Description != null;

  // "Line13Vissible" field.
  bool? _line13Vissible;
  bool get line13Vissible => _line13Vissible ?? false;
  set line13Vissible(bool? val) => _line13Vissible = val;

  bool hasLine13Vissible() => _line13Vissible != null;

  // "Line14Raw" field.
  String? _line14Raw;
  String get line14Raw => _line14Raw ?? '-';
  set line14Raw(String? val) => _line14Raw = val;

  bool hasLine14Raw() => _line14Raw != null;

  // "Line14Description" field.
  String? _line14Description;
  String get line14Description => _line14Description ?? '-';
  set line14Description(String? val) => _line14Description = val;

  bool hasLine14Description() => _line14Description != null;

  // "Line14Vissible" field.
  bool? _line14Vissible;
  bool get line14Vissible => _line14Vissible ?? false;
  set line14Vissible(bool? val) => _line14Vissible = val;

  bool hasLine14Vissible() => _line14Vissible != null;

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

  // "CurrentLineIsLast" field.
  bool? _currentLineIsLast;
  bool get currentLineIsLast => _currentLineIsLast ?? false;
  set currentLineIsLast(bool? val) => _currentLineIsLast = val;

  bool hasCurrentLineIsLast() => _currentLineIsLast != null;

  // "BuildDate" field.
  String? _buildDate;
  String get buildDate => _buildDate ?? '';
  set buildDate(String? val) => _buildDate = val;

  bool hasBuildDate() => _buildDate != null;

  // "BuildVersion" field.
  String? _buildVersion;
  String get buildVersion => _buildVersion ?? '';
  set buildVersion(String? val) => _buildVersion = val;

  bool hasBuildVersion() => _buildVersion != null;

  // "LinesTotal" field.
  int? _linesTotal;
  int get linesTotal => _linesTotal ?? 0;
  set linesTotal(int? val) => _linesTotal = val;

  void incrementLinesTotal(int amount) => linesTotal = linesTotal + amount;

  bool hasLinesTotal() => _linesTotal != null;

  // "LastLineNumber" field.
  int? _lastLineNumber;
  int get lastLineNumber => _lastLineNumber ?? 0;
  set lastLineNumber(int? val) => _lastLineNumber = val;

  void incrementLastLineNumber(int amount) =>
      lastLineNumber = lastLineNumber + amount;

  bool hasLastLineNumber() => _lastLineNumber != null;

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
        line06Raw: data['Line06Raw'] as String?,
        line06Description: data['Line06Description'] as String?,
        line06Vissible: data['Line06Vissible'] as bool?,
        line07Raw: data['Line07Raw'] as String?,
        line07Description: data['Line07Description'] as String?,
        line07Vissible: data['Line07Vissible'] as bool?,
        line08Raw: data['Line08Raw'] as String?,
        line08Description: data['Line08Description'] as String?,
        line08Vissible: data['Line08Vissible'] as bool?,
        line09Raw: data['Line09Raw'] as String?,
        line09Description: data['Line09Description'] as String?,
        line09Vissible: data['Line09Vissible'] as bool?,
        line10Raw: data['Line10Raw'] as String?,
        line10Description: data['Line10Description'] as String?,
        line10Vissible: data['Line10Vissible'] as bool?,
        line11Raw: data['Line11Raw'] as String?,
        line11Description: data['Line11Description'] as String?,
        line11Vissible: data['Line11Vissible'] as bool?,
        line12Raw: data['Line12Raw'] as String?,
        line12Description: data['Line12Description'] as String?,
        line12Vissible: data['Line12Vissible'] as bool?,
        line13Raw: data['Line13Raw'] as String?,
        line13Description: data['Line13Description'] as String?,
        line13Vissible: data['Line13Vissible'] as bool?,
        line14Raw: data['Line14Raw'] as String?,
        line14Description: data['Line14Description'] as String?,
        line14Vissible: data['Line14Vissible'] as bool?,
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
        currentLineIsLast: data['CurrentLineIsLast'] as bool?,
        buildDate: data['BuildDate'] as String?,
        buildVersion: data['BuildVersion'] as String?,
        linesTotal: castToType<int>(data['LinesTotal']),
        lastLineNumber: castToType<int>(data['LastLineNumber']),
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
        'Line06Raw': _line06Raw,
        'Line06Description': _line06Description,
        'Line06Vissible': _line06Vissible,
        'Line07Raw': _line07Raw,
        'Line07Description': _line07Description,
        'Line07Vissible': _line07Vissible,
        'Line08Raw': _line08Raw,
        'Line08Description': _line08Description,
        'Line08Vissible': _line08Vissible,
        'Line09Raw': _line09Raw,
        'Line09Description': _line09Description,
        'Line09Vissible': _line09Vissible,
        'Line10Raw': _line10Raw,
        'Line10Description': _line10Description,
        'Line10Vissible': _line10Vissible,
        'Line11Raw': _line11Raw,
        'Line11Description': _line11Description,
        'Line11Vissible': _line11Vissible,
        'Line12Raw': _line12Raw,
        'Line12Description': _line12Description,
        'Line12Vissible': _line12Vissible,
        'Line13Raw': _line13Raw,
        'Line13Description': _line13Description,
        'Line13Vissible': _line13Vissible,
        'Line14Raw': _line14Raw,
        'Line14Description': _line14Description,
        'Line14Vissible': _line14Vissible,
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
        'CurrentLineIsLast': _currentLineIsLast,
        'BuildDate': _buildDate,
        'BuildVersion': _buildVersion,
        'LinesTotal': _linesTotal,
        'LastLineNumber': _lastLineNumber,
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
        'Line06Raw': serializeParam(
          _line06Raw,
          ParamType.String,
        ),
        'Line06Description': serializeParam(
          _line06Description,
          ParamType.String,
        ),
        'Line06Vissible': serializeParam(
          _line06Vissible,
          ParamType.bool,
        ),
        'Line07Raw': serializeParam(
          _line07Raw,
          ParamType.String,
        ),
        'Line07Description': serializeParam(
          _line07Description,
          ParamType.String,
        ),
        'Line07Vissible': serializeParam(
          _line07Vissible,
          ParamType.bool,
        ),
        'Line08Raw': serializeParam(
          _line08Raw,
          ParamType.String,
        ),
        'Line08Description': serializeParam(
          _line08Description,
          ParamType.String,
        ),
        'Line08Vissible': serializeParam(
          _line08Vissible,
          ParamType.bool,
        ),
        'Line09Raw': serializeParam(
          _line09Raw,
          ParamType.String,
        ),
        'Line09Description': serializeParam(
          _line09Description,
          ParamType.String,
        ),
        'Line09Vissible': serializeParam(
          _line09Vissible,
          ParamType.bool,
        ),
        'Line10Raw': serializeParam(
          _line10Raw,
          ParamType.String,
        ),
        'Line10Description': serializeParam(
          _line10Description,
          ParamType.String,
        ),
        'Line10Vissible': serializeParam(
          _line10Vissible,
          ParamType.bool,
        ),
        'Line11Raw': serializeParam(
          _line11Raw,
          ParamType.String,
        ),
        'Line11Description': serializeParam(
          _line11Description,
          ParamType.String,
        ),
        'Line11Vissible': serializeParam(
          _line11Vissible,
          ParamType.bool,
        ),
        'Line12Raw': serializeParam(
          _line12Raw,
          ParamType.String,
        ),
        'Line12Description': serializeParam(
          _line12Description,
          ParamType.String,
        ),
        'Line12Vissible': serializeParam(
          _line12Vissible,
          ParamType.bool,
        ),
        'Line13Raw': serializeParam(
          _line13Raw,
          ParamType.String,
        ),
        'Line13Description': serializeParam(
          _line13Description,
          ParamType.String,
        ),
        'Line13Vissible': serializeParam(
          _line13Vissible,
          ParamType.bool,
        ),
        'Line14Raw': serializeParam(
          _line14Raw,
          ParamType.String,
        ),
        'Line14Description': serializeParam(
          _line14Description,
          ParamType.String,
        ),
        'Line14Vissible': serializeParam(
          _line14Vissible,
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
        'CurrentLineIsLast': serializeParam(
          _currentLineIsLast,
          ParamType.bool,
        ),
        'BuildDate': serializeParam(
          _buildDate,
          ParamType.String,
        ),
        'BuildVersion': serializeParam(
          _buildVersion,
          ParamType.String,
        ),
        'LinesTotal': serializeParam(
          _linesTotal,
          ParamType.int,
        ),
        'LastLineNumber': serializeParam(
          _lastLineNumber,
          ParamType.int,
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
        line06Raw: deserializeParam(
          data['Line06Raw'],
          ParamType.String,
          false,
        ),
        line06Description: deserializeParam(
          data['Line06Description'],
          ParamType.String,
          false,
        ),
        line06Vissible: deserializeParam(
          data['Line06Vissible'],
          ParamType.bool,
          false,
        ),
        line07Raw: deserializeParam(
          data['Line07Raw'],
          ParamType.String,
          false,
        ),
        line07Description: deserializeParam(
          data['Line07Description'],
          ParamType.String,
          false,
        ),
        line07Vissible: deserializeParam(
          data['Line07Vissible'],
          ParamType.bool,
          false,
        ),
        line08Raw: deserializeParam(
          data['Line08Raw'],
          ParamType.String,
          false,
        ),
        line08Description: deserializeParam(
          data['Line08Description'],
          ParamType.String,
          false,
        ),
        line08Vissible: deserializeParam(
          data['Line08Vissible'],
          ParamType.bool,
          false,
        ),
        line09Raw: deserializeParam(
          data['Line09Raw'],
          ParamType.String,
          false,
        ),
        line09Description: deserializeParam(
          data['Line09Description'],
          ParamType.String,
          false,
        ),
        line09Vissible: deserializeParam(
          data['Line09Vissible'],
          ParamType.bool,
          false,
        ),
        line10Raw: deserializeParam(
          data['Line10Raw'],
          ParamType.String,
          false,
        ),
        line10Description: deserializeParam(
          data['Line10Description'],
          ParamType.String,
          false,
        ),
        line10Vissible: deserializeParam(
          data['Line10Vissible'],
          ParamType.bool,
          false,
        ),
        line11Raw: deserializeParam(
          data['Line11Raw'],
          ParamType.String,
          false,
        ),
        line11Description: deserializeParam(
          data['Line11Description'],
          ParamType.String,
          false,
        ),
        line11Vissible: deserializeParam(
          data['Line11Vissible'],
          ParamType.bool,
          false,
        ),
        line12Raw: deserializeParam(
          data['Line12Raw'],
          ParamType.String,
          false,
        ),
        line12Description: deserializeParam(
          data['Line12Description'],
          ParamType.String,
          false,
        ),
        line12Vissible: deserializeParam(
          data['Line12Vissible'],
          ParamType.bool,
          false,
        ),
        line13Raw: deserializeParam(
          data['Line13Raw'],
          ParamType.String,
          false,
        ),
        line13Description: deserializeParam(
          data['Line13Description'],
          ParamType.String,
          false,
        ),
        line13Vissible: deserializeParam(
          data['Line13Vissible'],
          ParamType.bool,
          false,
        ),
        line14Raw: deserializeParam(
          data['Line14Raw'],
          ParamType.String,
          false,
        ),
        line14Description: deserializeParam(
          data['Line14Description'],
          ParamType.String,
          false,
        ),
        line14Vissible: deserializeParam(
          data['Line14Vissible'],
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
        currentLineIsLast: deserializeParam(
          data['CurrentLineIsLast'],
          ParamType.bool,
          false,
        ),
        buildDate: deserializeParam(
          data['BuildDate'],
          ParamType.String,
          false,
        ),
        buildVersion: deserializeParam(
          data['BuildVersion'],
          ParamType.String,
          false,
        ),
        linesTotal: deserializeParam(
          data['LinesTotal'],
          ParamType.int,
          false,
        ),
        lastLineNumber: deserializeParam(
          data['LastLineNumber'],
          ParamType.int,
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
        line06Raw == other.line06Raw &&
        line06Description == other.line06Description &&
        line06Vissible == other.line06Vissible &&
        line07Raw == other.line07Raw &&
        line07Description == other.line07Description &&
        line07Vissible == other.line07Vissible &&
        line08Raw == other.line08Raw &&
        line08Description == other.line08Description &&
        line08Vissible == other.line08Vissible &&
        line09Raw == other.line09Raw &&
        line09Description == other.line09Description &&
        line09Vissible == other.line09Vissible &&
        line10Raw == other.line10Raw &&
        line10Description == other.line10Description &&
        line10Vissible == other.line10Vissible &&
        line11Raw == other.line11Raw &&
        line11Description == other.line11Description &&
        line11Vissible == other.line11Vissible &&
        line12Raw == other.line12Raw &&
        line12Description == other.line12Description &&
        line12Vissible == other.line12Vissible &&
        line13Raw == other.line13Raw &&
        line13Description == other.line13Description &&
        line13Vissible == other.line13Vissible &&
        line14Raw == other.line14Raw &&
        line14Description == other.line14Description &&
        line14Vissible == other.line14Vissible &&
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
        currentLineLog == other.currentLineLog &&
        currentLineIsLast == other.currentLineIsLast &&
        buildDate == other.buildDate &&
        buildVersion == other.buildVersion &&
        linesTotal == other.linesTotal &&
        lastLineNumber == other.lastLineNumber;
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
        line06Raw,
        line06Description,
        line06Vissible,
        line07Raw,
        line07Description,
        line07Vissible,
        line08Raw,
        line08Description,
        line08Vissible,
        line09Raw,
        line09Description,
        line09Vissible,
        line10Raw,
        line10Description,
        line10Vissible,
        line11Raw,
        line11Description,
        line11Vissible,
        line12Raw,
        line12Description,
        line12Vissible,
        line13Raw,
        line13Description,
        line13Vissible,
        line14Raw,
        line14Description,
        line14Vissible,
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
        currentLineLog,
        currentLineIsLast,
        buildDate,
        buildVersion,
        linesTotal,
        lastLineNumber
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
  String? line06Raw,
  String? line06Description,
  bool? line06Vissible,
  String? line07Raw,
  String? line07Description,
  bool? line07Vissible,
  String? line08Raw,
  String? line08Description,
  bool? line08Vissible,
  String? line09Raw,
  String? line09Description,
  bool? line09Vissible,
  String? line10Raw,
  String? line10Description,
  bool? line10Vissible,
  String? line11Raw,
  String? line11Description,
  bool? line11Vissible,
  String? line12Raw,
  String? line12Description,
  bool? line12Vissible,
  String? line13Raw,
  String? line13Description,
  bool? line13Vissible,
  String? line14Raw,
  String? line14Description,
  bool? line14Vissible,
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
  bool? currentLineIsLast,
  String? buildDate,
  String? buildVersion,
  int? linesTotal,
  int? lastLineNumber,
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
      line06Raw: line06Raw,
      line06Description: line06Description,
      line06Vissible: line06Vissible,
      line07Raw: line07Raw,
      line07Description: line07Description,
      line07Vissible: line07Vissible,
      line08Raw: line08Raw,
      line08Description: line08Description,
      line08Vissible: line08Vissible,
      line09Raw: line09Raw,
      line09Description: line09Description,
      line09Vissible: line09Vissible,
      line10Raw: line10Raw,
      line10Description: line10Description,
      line10Vissible: line10Vissible,
      line11Raw: line11Raw,
      line11Description: line11Description,
      line11Vissible: line11Vissible,
      line12Raw: line12Raw,
      line12Description: line12Description,
      line12Vissible: line12Vissible,
      line13Raw: line13Raw,
      line13Description: line13Description,
      line13Vissible: line13Vissible,
      line14Raw: line14Raw,
      line14Description: line14Description,
      line14Vissible: line14Vissible,
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
      currentLineIsLast: currentLineIsLast,
      buildDate: buildDate,
      buildVersion: buildVersion,
      linesTotal: linesTotal,
      lastLineNumber: lastLineNumber,
    );
