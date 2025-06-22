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
  // State field(s) for DropDownChVenturi widget.
  int? dropDownChVenturiValue;
  FormFieldController<int>? dropDownChVenturiValueController;
  // State field(s) for DropDownVenturiInt widget.
  int? dropDownVenturiIntValue;
  FormFieldController<int>? dropDownVenturiIntValueController;
  // State field(s) for DropDownVenturiDur widget.
  int? dropDownVenturiDurValue;
  FormFieldController<int>? dropDownVenturiDurValueController;
  // State field(s) for DropDownVentInterval widget.
  int? dropDownVentIntervalValue;
  FormFieldController<int>? dropDownVentIntervalValueController;
  // State field(s) for DropDownVentDuration widget.
  int? dropDownVentDurationValue;
  FormFieldController<int>? dropDownVentDurationValueController;
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
    await actions.deleteLine(
      context,
    );

    context.pushNamed(DeviceMainWidget.routeName);
  }
}
