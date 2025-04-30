// ignore_for_file: unnecessary_getters_setters


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
    int? fanCount,
    bool? showFanSelector,
    bool? showPowerSelector,
    bool? showVenturiSelector,
    DeviceLineStruct? line01,
    DeviceLineStruct? line02,
    DeviceLineStruct? line03,
    DeviceLineStruct? line04,
    DeviceLineStruct? line05,
    bool? readOutLineWasEmpty,
    int? readOutNextLine,
    String? readOutNextAddress,
    String? readOutRaw,
    List<DeviceLineStruct>? lines,
  })  : _type = type,
        _typeLetter = typeLetter,
        _alias = alias,
        _serial = serial,
        _deviceName = deviceName,
        _info = info,
        _pwm = pwm,
        _fanCount = fanCount,
        _showFanSelector = showFanSelector,
        _showPowerSelector = showPowerSelector,
        _showVenturiSelector = showVenturiSelector,
        _line01 = line01,
        _line02 = line02,
        _line03 = line03,
        _line04 = line04,
        _line05 = line05,
        _readOutLineWasEmpty = readOutLineWasEmpty,
        _readOutNextLine = readOutNextLine,
        _readOutNextAddress = readOutNextAddress,
        _readOutRaw = readOutRaw,
        _lines = lines;

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
  String get deviceName => _deviceName ?? '';
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

  // "FanCount" field.
  int? _fanCount;
  int get fanCount => _fanCount ?? 0;
  set fanCount(int? val) => _fanCount = val;

  void incrementFanCount(int amount) => fanCount = fanCount + amount;

  bool hasFanCount() => _fanCount != null;

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

  // "Line01" field.
  DeviceLineStruct? _line01;
  DeviceLineStruct get line01 => _line01 ?? DeviceLineStruct();
  set line01(DeviceLineStruct? val) => _line01 = val;

  void updateLine01(Function(DeviceLineStruct) updateFn) {
    updateFn(_line01 ??= DeviceLineStruct());
  }

  bool hasLine01() => _line01 != null;

  // "Line02" field.
  DeviceLineStruct? _line02;
  DeviceLineStruct get line02 => _line02 ?? DeviceLineStruct();
  set line02(DeviceLineStruct? val) => _line02 = val;

  void updateLine02(Function(DeviceLineStruct) updateFn) {
    updateFn(_line02 ??= DeviceLineStruct());
  }

  bool hasLine02() => _line02 != null;

  // "Line03" field.
  DeviceLineStruct? _line03;
  DeviceLineStruct get line03 => _line03 ?? DeviceLineStruct();
  set line03(DeviceLineStruct? val) => _line03 = val;

  void updateLine03(Function(DeviceLineStruct) updateFn) {
    updateFn(_line03 ??= DeviceLineStruct());
  }

  bool hasLine03() => _line03 != null;

  // "Line04" field.
  DeviceLineStruct? _line04;
  DeviceLineStruct get line04 => _line04 ?? DeviceLineStruct();
  set line04(DeviceLineStruct? val) => _line04 = val;

  void updateLine04(Function(DeviceLineStruct) updateFn) {
    updateFn(_line04 ??= DeviceLineStruct());
  }

  bool hasLine04() => _line04 != null;

  // "Line05" field.
  DeviceLineStruct? _line05;
  DeviceLineStruct get line05 => _line05 ?? DeviceLineStruct();
  set line05(DeviceLineStruct? val) => _line05 = val;

  void updateLine05(Function(DeviceLineStruct) updateFn) {
    updateFn(_line05 ??= DeviceLineStruct());
  }

  bool hasLine05() => _line05 != null;

  // "ReadOutLineWasEmpty" field.
  bool? _readOutLineWasEmpty;
  bool get readOutLineWasEmpty => _readOutLineWasEmpty ?? false;
  set readOutLineWasEmpty(bool? val) => _readOutLineWasEmpty = val;

  bool hasReadOutLineWasEmpty() => _readOutLineWasEmpty != null;

  // "ReadOutNextLine" field.
  int? _readOutNextLine;
  int get readOutNextLine => _readOutNextLine ?? 0;
  set readOutNextLine(int? val) => _readOutNextLine = val;

  void incrementReadOutNextLine(int amount) =>
      readOutNextLine = readOutNextLine + amount;

  bool hasReadOutNextLine() => _readOutNextLine != null;

  // "ReadOutNextAddress" field.
  String? _readOutNextAddress;
  String get readOutNextAddress => _readOutNextAddress ?? '';
  set readOutNextAddress(String? val) => _readOutNextAddress = val;

  bool hasReadOutNextAddress() => _readOutNextAddress != null;

  // "ReadOutRaw" field.
  String? _readOutRaw;
  String get readOutRaw => _readOutRaw ?? '';
  set readOutRaw(String? val) => _readOutRaw = val;

  bool hasReadOutRaw() => _readOutRaw != null;

  // "Lines" field.
  List<DeviceLineStruct>? _lines;
  List<DeviceLineStruct> get lines => _lines ?? const [];
  set lines(List<DeviceLineStruct>? val) => _lines = val;

  void updateLines(Function(List<DeviceLineStruct>) updateFn) {
    updateFn(_lines ??= []);
  }

  bool hasLines() => _lines != null;

  static DeviceInfoStruct fromMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        type: data['Type'] as String?,
        typeLetter: data['TypeLetter'] as String?,
        alias: data['Alias'] as String?,
        serial: data['Serial'] as String?,
        deviceName: data['DeviceName'] as String?,
        info: data['Info'] as String?,
        pwm: data['PWM'] as String?,
        fanCount: castToType<int>(data['FanCount']),
        showFanSelector: data['ShowFanSelector'] as bool?,
        showPowerSelector: data['ShowPowerSelector'] as bool?,
        showVenturiSelector: data['ShowVenturiSelector'] as bool?,
        line01: data['Line01'] is DeviceLineStruct
            ? data['Line01']
            : DeviceLineStruct.maybeFromMap(data['Line01']),
        line02: data['Line02'] is DeviceLineStruct
            ? data['Line02']
            : DeviceLineStruct.maybeFromMap(data['Line02']),
        line03: data['Line03'] is DeviceLineStruct
            ? data['Line03']
            : DeviceLineStruct.maybeFromMap(data['Line03']),
        line04: data['Line04'] is DeviceLineStruct
            ? data['Line04']
            : DeviceLineStruct.maybeFromMap(data['Line04']),
        line05: data['Line05'] is DeviceLineStruct
            ? data['Line05']
            : DeviceLineStruct.maybeFromMap(data['Line05']),
        readOutLineWasEmpty: data['ReadOutLineWasEmpty'] as bool?,
        readOutNextLine: castToType<int>(data['ReadOutNextLine']),
        readOutNextAddress: data['ReadOutNextAddress'] as String?,
        readOutRaw: data['ReadOutRaw'] as String?,
        lines: getStructList(
          data['Lines'],
          DeviceLineStruct.fromMap,
        ),
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
        'FanCount': _fanCount,
        'ShowFanSelector': _showFanSelector,
        'ShowPowerSelector': _showPowerSelector,
        'ShowVenturiSelector': _showVenturiSelector,
        'Line01': _line01?.toMap(),
        'Line02': _line02?.toMap(),
        'Line03': _line03?.toMap(),
        'Line04': _line04?.toMap(),
        'Line05': _line05?.toMap(),
        'ReadOutLineWasEmpty': _readOutLineWasEmpty,
        'ReadOutNextLine': _readOutNextLine,
        'ReadOutNextAddress': _readOutNextAddress,
        'ReadOutRaw': _readOutRaw,
        'Lines': _lines?.map((e) => e.toMap()).toList(),
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
        'FanCount': serializeParam(
          _fanCount,
          ParamType.int,
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
        'Line01': serializeParam(
          _line01,
          ParamType.DataStruct,
        ),
        'Line02': serializeParam(
          _line02,
          ParamType.DataStruct,
        ),
        'Line03': serializeParam(
          _line03,
          ParamType.DataStruct,
        ),
        'Line04': serializeParam(
          _line04,
          ParamType.DataStruct,
        ),
        'Line05': serializeParam(
          _line05,
          ParamType.DataStruct,
        ),
        'ReadOutLineWasEmpty': serializeParam(
          _readOutLineWasEmpty,
          ParamType.bool,
        ),
        'ReadOutNextLine': serializeParam(
          _readOutNextLine,
          ParamType.int,
        ),
        'ReadOutNextAddress': serializeParam(
          _readOutNextAddress,
          ParamType.String,
        ),
        'ReadOutRaw': serializeParam(
          _readOutRaw,
          ParamType.String,
        ),
        'Lines': serializeParam(
          _lines,
          ParamType.DataStruct,
          isList: true,
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
        fanCount: deserializeParam(
          data['FanCount'],
          ParamType.int,
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
        line01: deserializeStructParam(
          data['Line01'],
          ParamType.DataStruct,
          false,
          structBuilder: DeviceLineStruct.fromSerializableMap,
        ),
        line02: deserializeStructParam(
          data['Line02'],
          ParamType.DataStruct,
          false,
          structBuilder: DeviceLineStruct.fromSerializableMap,
        ),
        line03: deserializeStructParam(
          data['Line03'],
          ParamType.DataStruct,
          false,
          structBuilder: DeviceLineStruct.fromSerializableMap,
        ),
        line04: deserializeStructParam(
          data['Line04'],
          ParamType.DataStruct,
          false,
          structBuilder: DeviceLineStruct.fromSerializableMap,
        ),
        line05: deserializeStructParam(
          data['Line05'],
          ParamType.DataStruct,
          false,
          structBuilder: DeviceLineStruct.fromSerializableMap,
        ),
        readOutLineWasEmpty: deserializeParam(
          data['ReadOutLineWasEmpty'],
          ParamType.bool,
          false,
        ),
        readOutNextLine: deserializeParam(
          data['ReadOutNextLine'],
          ParamType.int,
          false,
        ),
        readOutNextAddress: deserializeParam(
          data['ReadOutNextAddress'],
          ParamType.String,
          false,
        ),
        readOutRaw: deserializeParam(
          data['ReadOutRaw'],
          ParamType.String,
          false,
        ),
        lines: deserializeStructParam<DeviceLineStruct>(
          data['Lines'],
          ParamType.DataStruct,
          true,
          structBuilder: DeviceLineStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DeviceInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DeviceInfoStruct &&
        type == other.type &&
        typeLetter == other.typeLetter &&
        alias == other.alias &&
        serial == other.serial &&
        deviceName == other.deviceName &&
        info == other.info &&
        pwm == other.pwm &&
        fanCount == other.fanCount &&
        showFanSelector == other.showFanSelector &&
        showPowerSelector == other.showPowerSelector &&
        showVenturiSelector == other.showVenturiSelector &&
        line01 == other.line01 &&
        line02 == other.line02 &&
        line03 == other.line03 &&
        line04 == other.line04 &&
        line05 == other.line05 &&
        readOutLineWasEmpty == other.readOutLineWasEmpty &&
        readOutNextLine == other.readOutNextLine &&
        readOutNextAddress == other.readOutNextAddress &&
        readOutRaw == other.readOutRaw &&
        listEquality.equals(lines, other.lines);
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
        fanCount,
        showFanSelector,
        showPowerSelector,
        showVenturiSelector,
        line01,
        line02,
        line03,
        line04,
        line05,
        readOutLineWasEmpty,
        readOutNextLine,
        readOutNextAddress,
        readOutRaw,
        lines
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
  int? fanCount,
  bool? showFanSelector,
  bool? showPowerSelector,
  bool? showVenturiSelector,
  DeviceLineStruct? line01,
  DeviceLineStruct? line02,
  DeviceLineStruct? line03,
  DeviceLineStruct? line04,
  DeviceLineStruct? line05,
  bool? readOutLineWasEmpty,
  int? readOutNextLine,
  String? readOutNextAddress,
  String? readOutRaw,
}) =>
    DeviceInfoStruct(
      type: type,
      typeLetter: typeLetter,
      alias: alias,
      serial: serial,
      deviceName: deviceName,
      info: info,
      pwm: pwm,
      fanCount: fanCount,
      showFanSelector: showFanSelector,
      showPowerSelector: showPowerSelector,
      showVenturiSelector: showVenturiSelector,
      line01: line01 ?? DeviceLineStruct(),
      line02: line02 ?? DeviceLineStruct(),
      line03: line03 ?? DeviceLineStruct(),
      line04: line04 ?? DeviceLineStruct(),
      line05: line05 ?? DeviceLineStruct(),
      readOutLineWasEmpty: readOutLineWasEmpty,
      readOutNextLine: readOutNextLine,
      readOutNextAddress: readOutNextAddress,
      readOutRaw: readOutRaw,
    );
