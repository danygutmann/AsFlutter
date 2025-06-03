import '/flutter_flow/flutter_flow_util.dart';
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
    if (Navigator.of(context).canPop()) {
      context.pop();
    }
    context.pushNamed(
      DeviceLineWidget.routeName,
      queryParameters: {
        'address': serializeParam(
          address,
          ParamType.String,
        ),
        'lineRaw': serializeParam(
          lineAsString,
          ParamType.String,
        ),
      }.withoutNulls,
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
