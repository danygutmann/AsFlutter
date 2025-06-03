import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'device_options_widget.dart' show DeviceOptionsWidget;
import 'package:flutter/material.dart';

class DeviceOptionsModel extends FlutterFlowModel<DeviceOptionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldAlias widget.
  FocusNode? textFieldAliasFocusNode;
  TextEditingController? textFieldAliasTextController;
  String? Function(BuildContext, String?)?
      textFieldAliasTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldAliasFocusNode?.dispose();
    textFieldAliasTextController?.dispose();
  }

  /// Action blocks.
  Future abGetType(BuildContext context) async {}
}
