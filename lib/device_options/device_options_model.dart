import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
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

  Future wifiOffFlow(BuildContext context) async {
    context.pushNamed(HomePageWidget.routeName);

    await actions.wifiOff(
      context,
    );
    await actions.discoverDevice(
      context,
    );
  }
}
