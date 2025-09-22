import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';

class DeviceSaveToPhoneModel extends FlutterFlowModel<DeviceSaveToPhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldName widget.
  FocusNode? textFieldNameFocusNode;
  TextEditingController? textFieldNameTextController;
  String? Function(BuildContext, String?)? textFieldNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNameFocusNode?.dispose();
    textFieldNameTextController?.dispose();
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

  Future delteLineFlow(BuildContext context) async {
    context.pushNamed(DeviceMainWidget.routeName);

    await actions.deleteAllLines(
      context,
    );
    await actions.readOutDevice(
      context,
    );
  }

  Future defaultLinesFlow(BuildContext context) async {
    context.pushNamed(DeviceMainWidget.routeName);

    await actions.setDefaultLines(
      context,
    );
    await actions.readOutDevice(
      context,
    );
  }

  Future restartDeviceFlow(BuildContext context) async {
    context.pushNamed(HomePageWidget.routeName);

    await actions.restartDevice(
      context,
    );
    await actions.discoverDevice(
      context,
    );
  }

  Future setAliasFlow(BuildContext context) async {}

  Future saveLinesToPhone(BuildContext context) async {
    await saveLinesToPhone(context);
  }
}
