import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future openDevice(BuildContext context) async {
    context.pushNamed(DeviceMainWidget.routeName);

    await actions.setDateTime(
      context,
    );
    await actions.readOutDevice(
      context,
    );
  }
}
