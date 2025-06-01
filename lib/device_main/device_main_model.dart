import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';

class DeviceMainModel extends FlutterFlowModel<DeviceMainWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future showLine(
    BuildContext context, {
    required String? address,
    required String? lineAsString,
  }) async {
    await actions.editLine(
      context,
      lineAsString!,
      address!,
    );
    if (Navigator.of(context).canPop()) {
      context.pop();
    }
    context.pushNamed(
      DeviceLineWidget.routeName,
      extra: <String, dynamic>{
        kTransitionInfoKey: TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.leftToRight,
          duration: Duration(milliseconds: 200),
        ),
      },
    );
  }
}
