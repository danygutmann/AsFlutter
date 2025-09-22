// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavedProgramStruct extends BaseStruct {
  SavedProgramStruct({
    String? name,
    String? description,
    List<String>? lines,
    String? type,
  })  : _name = name,
        _description = description,
        _lines = lines,
        _type = type;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "lines" field.
  List<String>? _lines;
  List<String> get lines => _lines ?? const [];
  set lines(List<String>? val) => _lines = val;

  void updateLines(Function(List<String>) updateFn) {
    updateFn(_lines ??= []);
  }

  bool hasLines() => _lines != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static SavedProgramStruct fromMap(Map<String, dynamic> data) =>
      SavedProgramStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        lines: getDataList(data['lines']),
        type: data['type'] as String?,
      );

  static SavedProgramStruct? maybeFromMap(dynamic data) => data is Map
      ? SavedProgramStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'lines': _lines,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'lines': serializeParam(
          _lines,
          ParamType.String,
          isList: true,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static SavedProgramStruct fromSerializableMap(Map<String, dynamic> data) =>
      SavedProgramStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        lines: deserializeParam<String>(
          data['lines'],
          ParamType.String,
          true,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SavedProgramStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SavedProgramStruct &&
        name == other.name &&
        description == other.description &&
        listEquality.equals(lines, other.lines) &&
        type == other.type;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, description, lines, type]);
}

SavedProgramStruct createSavedProgramStruct({
  String? name,
  String? description,
  String? type,
}) =>
    SavedProgramStruct(
      name: name,
      description: description,
      type: type,
    );
