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
  Future editLine01(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '000',
    );
  }

  Future editLine02(BuildContext context) async {
    context.goNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '010',
    );
  }

  Future editLine03(BuildContext context) async {
    context.goNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '020',
    );
  }

  Future editLine04(BuildContext context) async {
    context.goNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '030',
    );
  }

  Future editLine05(BuildContext context) async {
    context.goNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '040',
    );
  }

  Future addNewLine(BuildContext context) async {
    await actions.sendNewLine(
      context,
    );
    await actions.readOutDevice(
      context,
    );
  }

  Future goHome(BuildContext context) async {
    context.pushNamed(HomePageWidget.routeName);

    await actions.discoverDevice(
      context,
    );
  }

  Future editLine06(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '050',
    );
  }

  Future editLine07(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '060',
    );
  }

  Future editLine08(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '070',
    );
  }

  Future editLine09(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '080',
    );
  }

  Future editLine10(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '090',
    );
  }

  Future editLine11(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '100',
    );
  }

  Future editLine12(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '110',
    );
  }

  Future editLine13(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '120',
    );
  }

  Future editLine14(BuildContext context) async {
    context.pushNamed(DeviceLineWidget.routeName);

    await actions.editLine(
      context,
      '130',
    );
  }
}
