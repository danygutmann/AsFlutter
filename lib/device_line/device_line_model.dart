import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';

class DeviceLineModel extends FlutterFlowModel<DeviceLineWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxMo widget.
  bool? checkboxMoValue;
  // State field(s) for CheckboxDi widget.
  bool? checkboxDiValue;
  // State field(s) for CheckboxMi widget.
  bool? checkboxMiValue;
  // State field(s) for CheckboxDo widget.
  bool? checkboxDoValue;
  // State field(s) for CheckboxFr widget.
  bool? checkboxFrValue;
  // State field(s) for CheckboxSa widget.
  bool? checkboxSaValue;
  // State field(s) for CheckboxSo widget.
  bool? checkboxSoValue;
  // State field(s) for DropDownStartHour widget.
  int? dropDownStartHourValue;
  FormFieldController<int>? dropDownStartHourValueController;
  // State field(s) for DropDownStartMinute widget.
  int? dropDownStartMinuteValue;
  FormFieldController<int>? dropDownStartMinuteValueController;
  // State field(s) for DropDownStopHour widget.
  int? dropDownStopHourValue;
  FormFieldController<int>? dropDownStopHourValueController;
  // State field(s) for DropDownStopMinute widget.
  int? dropDownStopMinuteValue;
  FormFieldController<int>? dropDownStopMinuteValueController;
  // State field(s) for DropDownChQuad widget.
  int? dropDownChQuadValue;
  FormFieldController<int>? dropDownChQuadValueController;
  // State field(s) for DropDownVenturiInt widget.
  int? dropDownVenturiIntValue;
  FormFieldController<int>? dropDownVenturiIntValueController;
  // State field(s) for DropDownVenturiDur widget.
  int? dropDownVenturiDurValue;
  FormFieldController<int>? dropDownVenturiDurValueController;
  // State field(s) for DropDownPower widget.
  int? dropDownPowerValue;
  FormFieldController<int>? dropDownPowerValueController;
  // State field(s) for DropDownInterval widget.
  int? dropDownIntervalValue;
  FormFieldController<int>? dropDownIntervalValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future delete(BuildContext context) async {
    await actions.deleteLineCopy2(
      context,
    );

    context.pushNamed(DeviceMainWidget.routeName);
  }

  Future save(BuildContext context) async {
    await Future.wait([
      Future(() async {
        if (FFAppState().CurrentDeviceInfo.typeLetter == 'A') {
          await actions.sendDataQuad(
            context,
            checkboxMoValue!,
            checkboxDiValue!,
            checkboxMiValue!,
            checkboxDoValue!,
            checkboxFrValue!,
            checkboxSaValue!,
            checkboxSoValue!,
            FFAppState().CurrentDeviceInfo.currentLineAddress,
            dropDownStartHourValue!,
            dropDownStartMinuteValue!,
            dropDownStopHourValue!,
            dropDownStopMinuteValue!,
            1,
            100,
            dropDownIntervalValue!,
            0,
            0,
          );
        }
      }),
      Future(() async {
        if (FFAppState().CurrentDeviceInfo.typeLetter == 'Q') {
          await actions.sendDataQuad(
            context,
            checkboxMoValue!,
            checkboxDiValue!,
            checkboxMiValue!,
            checkboxDoValue!,
            checkboxFrValue!,
            checkboxSaValue!,
            checkboxSoValue!,
            FFAppState().CurrentDeviceInfo.currentLineAddress,
            dropDownStartHourValue!,
            dropDownStartMinuteValue!,
            dropDownStopHourValue!,
            dropDownStopMinuteValue!,
            dropDownChQuadValue!,
            dropDownPowerValue!,
            dropDownIntervalValue!,
            0,
            0,
          );
        }
      }),
      Future(() async {
        if (FFAppState().CurrentDeviceInfo.typeLetter == 'V') {
          await actions.sendDataQuad(
            context,
            checkboxMoValue!,
            checkboxDiValue!,
            checkboxMiValue!,
            checkboxDoValue!,
            checkboxFrValue!,
            checkboxSaValue!,
            checkboxSoValue!,
            FFAppState().CurrentDeviceInfo.currentLineAddress,
            dropDownStartHourValue!,
            dropDownStartMinuteValue!,
            dropDownStopHourValue!,
            dropDownStopMinuteValue!,
            200,
            100,
            0,
            dropDownVenturiIntValue!,
            dropDownVenturiDurValue!,
          );
        }
      }),
    ]);

    context.pushNamed(DeviceMainWidget.routeName);
  }
}
