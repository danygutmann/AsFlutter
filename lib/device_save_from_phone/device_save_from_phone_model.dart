import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';

class DeviceSaveFromPhoneModel
    extends FlutterFlowModel<DeviceSaveFromPhoneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

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

  Future getStoredDesc(BuildContext context) async {
    String? newDesc;

    newDesc = await actions.storedSaveToDeviceGetDesc(
      context,
      dropDownValue!,
    );
    FFAppState().restoredDescription = newDesc;
  }

  Future storedSendFlow(BuildContext context) async {
    context.pushNamed(DeviceMainWidget.routeName);

    await actions.storedSaveToDevice(
      context,
      dropDownValue!,
    );
    await actions.readOutDevice(
      context,
    );
  }
}
