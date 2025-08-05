import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'device_line_model.dart';
export 'device_line_model.dart';

class DeviceLineWidget extends StatefulWidget {
  const DeviceLineWidget({super.key});

  static String routeName = 'DeviceLine';
  static String routePath = '/deviceLine';

  @override
  State<DeviceLineWidget> createState() => _DeviceLineWidgetState();
}

class _DeviceLineWidgetState extends State<DeviceLineWidget> {
  late DeviceLineModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeviceLineModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        appBar: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).alternate,
                automaticallyImplyLeading: false,
                leading: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Stack(
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            '7sn4fw5z' /* Button */,
                          ),
                          options: FFButtonOptions(
                            height: 70.38,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(DeviceMainWidget.routeName);
                          },
                          child: Container(
                            width: 200.0,
                            height: 200.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/App_Icon_512x512px_(1).png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                title: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          FFAppState().CurrentDeviceInfo.appBrand,
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, -1.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await actions.getInfo(
                            context,
                          );
                        },
                        child: Text(
                          FFAppState().CurrentDeviceInfo.appStatusLine,
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).tertiary,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                actions: [],
                centerTitle: false,
                elevation: 2.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 5.0, 10.0, 5.0),
                              child: FFButtonWidget(
                                onPressed: true
                                    ? null
                                    : () async {
                                        setAppLanguage(context, 'en');
                                      },
                                text: FFLocalizations.of(context).getText(
                                  'ulk8gu0f' /* Weekdays */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 20.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '8o7o9fx7' /* Mon */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxMoValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineDayBoolMo,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxMoValue = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .alternate !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'b9ddx8ue' /* Tue */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxDiValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineDayBoolDi,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxDiValue = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .alternate !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '1iva8cn1' /* Wed */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxMiValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineDayBoolMi,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxMiValue = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .alternate !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'ylpfmh4a' /* Thu */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxDoValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineDayBoolDo,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxDoValue = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .alternate !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'hspqjsna' /* Fri */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxFrValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineDayBoolFr,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxFrValue = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .alternate !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'nj857cko' /* Sat */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxSaValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineDayBoolSa,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxSaValue = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .alternate !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'y7rwlswz' /* Sun */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxSoValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineDayBoolSo,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.checkboxSoValue = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .alternate !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 5.0),
                              child: FFButtonWidget(
                                onPressed: true
                                    ? null
                                    : () async {
                                        setAppLanguage(context, 'en');
                                      },
                                text: FFLocalizations.of(context).getText(
                                  'cxc0tt92' /* Times */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 20.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '3agoxb1s' /* Begin */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                FlutterFlowDropDown<int>(
                                  controller: _model
                                          .dropDownStartHourValueController ??=
                                      FormFieldController<int>(
                                    _model.dropDownStartHourValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineStartHour,
                                  ),
                                  options: List<int>.from([
                                    0,
                                    1,
                                    2,
                                    3,
                                    4,
                                    5,
                                    6,
                                    7,
                                    8,
                                    9,
                                    10,
                                    11,
                                    12,
                                    13,
                                    14,
                                    15,
                                    16,
                                    17,
                                    18,
                                    19,
                                    20,
                                    21,
                                    22,
                                    23,
                                    24
                                  ]),
                                  optionLabels: [
                                    FFLocalizations.of(context).getText(
                                      'ub2miwra' /* 0 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'wx560b5l' /* 1 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'uzbzios4' /* 2 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '5sw926zs' /* 3 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'hzejpysw' /* 4 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'z21qxidy' /* 5 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'fz83jnkk' /* 6 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'ajnac6ce' /* 7 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'pkb292y8' /* 8 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'mkazk7r3' /* 9 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'gjk5txrd' /* 10 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'v1agejfs' /* 11 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '5qzorg5t' /* 12 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '2wwevl8y' /* 13 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'jdvsebbi' /* 14 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'g3vsq10l' /* 15 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '9lorkx1e' /* 16 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'xol5agex' /* 17 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'q0u7zuky' /* 18 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '7dgtvy5e' /* 19 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '2qfmh802' /* 20 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'zae25k8b' /* 21 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '3c7nzg8r' /* 22 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'uzwl2xce' /* 23 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'gbo7hmvo' /* 24 */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(() =>
                                      _model.dropDownStartHourValue = val),
                                  width: 100.0,
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'pkap45c0' /* Hour */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'w7xsubme' /*  :  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                FlutterFlowDropDown<int>(
                                  controller: _model
                                          .dropDownStartMinuteValueController ??=
                                      FormFieldController<int>(
                                    _model.dropDownStartMinuteValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineStartMinute,
                                  ),
                                  options: List<int>.from([0, 15, 30, 45]),
                                  optionLabels: [
                                    FFLocalizations.of(context).getText(
                                      '1ilhx4i5' /* 0 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'z0lqqzs2' /* 15 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'smv9knaf' /* 30 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'zadlg96e' /* 45 */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(() =>
                                      _model.dropDownStartMinuteValue = val),
                                  width: 100.0,
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    '4kjfu4mo' /* Minute */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'khcmz8om' /* Ending:  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                FlutterFlowDropDown<int>(
                                  controller:
                                      _model.dropDownStopHourValueController ??=
                                          FormFieldController<int>(
                                    _model.dropDownStopHourValue ??=
                                        FFAppState()
                                            .CurrentDeviceInfo
                                            .currentLineStopHour,
                                  ),
                                  options: List<int>.from([
                                    0,
                                    1,
                                    2,
                                    3,
                                    4,
                                    5,
                                    6,
                                    7,
                                    8,
                                    9,
                                    10,
                                    11,
                                    12,
                                    13,
                                    14,
                                    15,
                                    16,
                                    17,
                                    18,
                                    19,
                                    20,
                                    21,
                                    22,
                                    23,
                                    24
                                  ]),
                                  optionLabels: [
                                    FFLocalizations.of(context).getText(
                                      'smz2ono9' /* 0 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'yjrj5hc1' /* 1 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '4j97yb8t' /* 2 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'l89jkeia' /* 3 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'r61a480f' /* 4 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '3vgiikzq' /* 5 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '5u73d9as' /* 6 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'bbdtv44r' /* 7 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'angn08bt' /* 8 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'lt8hbx66' /* 9 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'wmp3xa0s' /* 10 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '4vk98j02' /* 11 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'k79z2mut' /* 12 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'vy8ppb5k' /* 13 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '45hf25sm' /* 14 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'yzx67fzj' /* 15 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'bpn67fvl' /* 16 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '6hntvfo6' /* 17 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'o95o9ywi' /* 18 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'iqjhax51' /* 19 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '0nwgqk0l' /* 20 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'z655yek2' /* 21 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'onf2mh8l' /* 22 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'efrhh6mt' /* 23 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'i1nbvnab' /* 24 */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.dropDownStopHourValue = val),
                                  width: 100.0,
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'qvxlv4tz' /* Hour */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'mzs4rfsd' /*  :  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                FlutterFlowDropDown<int>(
                                  controller: _model
                                          .dropDownStopMinuteValueController ??=
                                      FormFieldController<int>(
                                    _model.dropDownStopMinuteValue ??=
                                        _model.dropDownStartMinuteValue,
                                  ),
                                  options: List<int>.from([0, 15, 30, 45]),
                                  optionLabels: [
                                    FFLocalizations.of(context).getText(
                                      'a9b0vt9f' /* 0 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'ridiq6tb' /* 15 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '9dr4qaal' /* 30 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '51niiv0l' /* 45 */,
                                    )
                                  ],
                                  onChanged: (val) => safeSetState(() =>
                                      _model.dropDownStopMinuteValue = val),
                                  width: 100.0,
                                  height: 40.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'q4rfz000' /* Minute */,
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ],
                            ),
                          ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter == 'Q')
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 5.0),
                                child: FFButtonWidget(
                                  onPressed: true
                                      ? null
                                      : () async {
                                          setAppLanguage(context, 'en');
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'w1vwjgiz' /* Channel */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 20.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter == 'Q')
                            FlutterFlowDropDown<int>(
                              controller:
                                  _model.dropDownChQuadValueController ??=
                                      FormFieldController<int>(
                                _model.dropDownChQuadValue ??= FFAppState()
                                    .CurrentDeviceInfo
                                    .currentLineFan,
                              ),
                              options: List<int>.from([1, 2, 3, 4]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  'owxko5is' /* Fan 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'mescond8' /* Fan 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'evy8vf46' /* Fan 3 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'cvizc3n9' /* Fan 4 */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownChQuadValue = val),
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'rwf3m2d9' /* Intervall */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter == 'V')
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 5.0),
                                child: FFButtonWidget(
                                  onPressed: true
                                      ? null
                                      : () async {
                                          setAppLanguage(context, 'en');
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'mh3sa88i' /* Venturi */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 20.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter == 'V')
                            FlutterFlowDropDown<int>(
                              controller:
                                  _model.dropDownVenturiIntValueController ??=
                                      FormFieldController<int>(
                                _model.dropDownVenturiIntValue ??= FFAppState()
                                    .CurrentDeviceInfo
                                    .currentLineVenturiInterval,
                              ),
                              options: List<int>.from([
                                0,
                                1,
                                2,
                                3,
                                4,
                                5,
                                6,
                                7,
                                8,
                                9,
                                10,
                                11,
                                12,
                                13,
                                14,
                                15,
                                16,
                                17,
                                18,
                                19,
                                20,
                                21,
                                22,
                                23,
                                24,
                                25,
                                26,
                                27,
                                28,
                                29,
                                30,
                                31,
                                32,
                                33,
                                34,
                                35,
                                36,
                                37,
                                38,
                                39,
                                40,
                                41,
                                42,
                                43,
                                44,
                                45,
                                46,
                                47,
                                48,
                                49,
                                50,
                                51,
                                52,
                                53,
                                54,
                                55,
                                56,
                                57,
                                58,
                                59,
                                60
                              ]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  '1z4686ha' /* Never */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '31ahxrdi' /* Every Minute */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '72z26jb0' /* all 2 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'v0hx1m22' /* all 3 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'o6uzr4sz' /* all 4 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8pk20lj3' /* all 5 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '4eisa2wo' /* all 6 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ezelaz7r' /* all 7 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'zb94z5fr' /* all 8 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'a6plkxy2' /* for 9 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'd5bjuznh' /* all 10 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '2iu1hfyp' /* all 11 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3g8ms350' /* all 12 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8zs1w1fr' /* all 13 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '4rrk7ouw' /* all 14 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'r6e3py8b' /* all 15 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'orgz9lw9' /* all 16 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'tbalnxyu' /* all 17 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'lvhlcnyk' /* all 18 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '9geu1tah' /* all 19 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8lj91m3r' /* all 20 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'rdj8hjur' /* all 21 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'vzubyus1' /* all 22 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '5blaumsg' /* all 23 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xkm4xf2v' /* all 24 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'con2upfs' /* all 25 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qr94aaxp' /* all 26 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'wen0cser' /* all 27 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'skf2lsew' /* all 28 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'd9vu6zfy' /* all 29 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'x8dm052k' /* all 30 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qcsqsdla' /* all 31 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '4fn6sqi4' /* all 32 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '2mlhf8to' /* all 33 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'r9qziyef' /* all 34 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ktwfvzbi' /* all 35 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '1ubtlyy8' /* all 36 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'wn4zehpl' /* all 37 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'kqrn87fh' /* all 38 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8g8uwt75' /* all 39 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '2eyvkyd9' /* all 40 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'i7ukzjwd' /* all 41 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '7yieaamw' /* all 42 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'eihr49ch' /* all 43 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'jy8vnn7g' /* all 44 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ijc9xrqw' /* all 45 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pwvre5yd' /* all 46 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '1wkixvod' /* all 47 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '9dux6vvy' /* all 48 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'bab5nkiq' /* all 49 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'hskxfak6' /* all 50 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'w9arwhkn' /* all 51 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8pb8ea8f' /* all 52 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'e3q910ll' /* all 53 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'toh24fra' /* all 54 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'vxri8jac' /* all 55 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xqobopuj' /* all 56 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '7rz4xxmb' /* all 57 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '4o2svq0p' /* all 58 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '08fnxjm0' /* all 59 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'byaq347i' /* all 60 Minutes */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownVenturiIntValue = val),
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'o4ljwpzr' /* Intervall */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter == 'V')
                            FlutterFlowDropDown<int>(
                              controller:
                                  _model.dropDownVenturiDurValueController ??=
                                      FormFieldController<int>(
                                _model.dropDownVenturiDurValue ??= FFAppState()
                                    .CurrentDeviceInfo
                                    .currentLineVenturiDuration,
                              ),
                              options: List<int>.from([
                                1,
                                2,
                                3,
                                4,
                                5,
                                6,
                                7,
                                8,
                                9,
                                10,
                                11,
                                12,
                                13,
                                14,
                                15,
                                16,
                                17,
                                18,
                                19,
                                20,
                                21,
                                22,
                                23,
                                24,
                                25,
                                26,
                                27,
                                28,
                                29,
                                30,
                                31,
                                32,
                                33,
                                34,
                                35,
                                36,
                                37,
                                38,
                                39,
                                40,
                                41,
                                42,
                                43,
                                44,
                                45,
                                46,
                                47,
                                48,
                                49,
                                50,
                                51,
                                52,
                                53,
                                54,
                                55,
                                56,
                                57,
                                58,
                                59,
                                60,
                                61,
                                62,
                                63,
                                64,
                                65,
                                66,
                                67,
                                68,
                                69,
                                70,
                                71,
                                72,
                                73,
                                74,
                                75,
                                76,
                                77,
                                78,
                                79,
                                80,
                                81,
                                82,
                                83,
                                84,
                                85,
                                86,
                                87,
                                88,
                                89,
                                90,
                                91,
                                92,
                                93,
                                94,
                                95,
                                96,
                                97,
                                98,
                                99,
                                100,
                                101,
                                102,
                                103,
                                104,
                                105,
                                106,
                                107,
                                108,
                                109,
                                110,
                                111,
                                112,
                                113,
                                114,
                                115,
                                116,
                                117,
                                118,
                                119,
                                120,
                                121,
                                122,
                                123,
                                124,
                                125,
                                126,
                                127,
                                128,
                                129,
                                130,
                                131,
                                132,
                                133,
                                134,
                                135,
                                136,
                                137,
                                138,
                                139,
                                140,
                                141,
                                142,
                                143,
                                144,
                                145,
                                146,
                                147,
                                148,
                                149,
                                150,
                                151,
                                152,
                                153,
                                154,
                                155,
                                156,
                                157,
                                158,
                                159,
                                160,
                                161,
                                162,
                                163,
                                164,
                                165,
                                166,
                                167,
                                168,
                                169,
                                170,
                                171,
                                172,
                                173,
                                174,
                                175,
                                176,
                                177,
                                178,
                                179,
                                180
                              ]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  'jt8ie7hd' /* for 1 Second */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '6eot3ixl' /* for 2 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'rzrfw2d3' /* for 3 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'kr24olnw' /* for 4 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'zskkxs0t' /* for 5 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'kjbww7cr' /* for 6 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'niesp2eq' /* for 7 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3qe8twpf' /* for 8 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '492llnoe' /* for 9 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fd0r9pt6' /* for 10 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'uldllc7l' /* for 11 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'exw3aw8h' /* for 12 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pd5teuof' /* for 13 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ydp0fstw' /* for 14 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '78mkyhdg' /* for 15 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0n3wfz3u' /* for 16 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'za60zx89' /* for 17 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xxqmc3lv' /* for 18 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'cmiten9a' /* for 19 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'rd9sy3sf' /* for 20 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  's93n61kk' /* for 21 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'gdxcsm9v' /* for 22 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '60rn8uct' /* for 23 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '9hl1vfri' /* for 24 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qett1tjt' /* for 25 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'sjj02o4n' /* for 26 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'rosq5kzm' /* for 27 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'mmw4621y' /* for 28 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ydjawdxq' /* for 29 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'rbfvzchp' /* for 30 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0umn1hl3' /* for 31 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pv9qupit' /* for 32 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '7pmdkh9a' /* for 33 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'w4pxuuo6' /* for 34 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'o4cvkfyu' /* for 35 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'iz5gg4mv' /* for 36 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xvytsdj3' /* for 37 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ya2rnf6p' /* for 38 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'x2cbac99' /* for 39 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '7hx60c4k' /* for 40 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'lrsjxvwt' /* for 41 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'z9e4ws8e' /* for 42 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'uwa3mo2l' /* for 43 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'dngjfdj4' /* for 44 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'w6wumvrh' /* for 45 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fejseood' /* for 46 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'bboh73n4' /* for 47 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '1fjeq8ba' /* for 48 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ax9ddsv9' /* for 49 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3kyl0poo' /* for 50 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qrp2n4sg' /* for 51 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'en1aw3ca' /* for 52 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'h5f32rzz' /* for 53 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'm1gsjnqp' /* for 54 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'x4r83air' /* for 55 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '4xu48occ' /* for 56 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3xbe54ij' /* for 57 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pnkj8iop' /* for 58 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'm8id9uw8' /* for 59 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'yloj7cqa' /* for 60 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '89dexeru' /* for 61 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pekij5xj' /* for 62 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '5rk8p7ie' /* for 63 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '4g6zm2k6' /* for 64 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'sqjquue4' /* for 65 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'azvwr2h4' /* for 66 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'cfm4kelp' /* for 67 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'modgu0yh' /* for 68 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pncmm1e6' /* for 69 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'g7anfkrd' /* for 70 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'm83uwy37' /* for 71 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'lsrpvfyk' /* for 72 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'f2z8rotl' /* for 73 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'sw7596r5' /* for 74 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'azomof8e' /* for 75 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3vugmoku' /* for 76 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'e8gsow2j' /* for 77 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'oenfcrwp' /* for 78 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qtapak1k' /* for 79 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'dgefq3rx' /* for 80 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'f51gga5q' /* for 81 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'szd473pj' /* for 82 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'kmjbs1d2' /* for 83 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ok8pb6ve' /* for 84 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '7enadcyi' /* for 85 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qqa3xlvt' /* for 86 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'kbk1f9az' /* for 87 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'u42ulzsy' /* for 88 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '5ey127gw' /* for 89 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'looirga5' /* for 90 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fxjn8r7c' /* for 91 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0go66g9c' /* for 92 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'prg887sp' /* for 93 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3axus8hq' /* for 94 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'n9k41awo' /* for 95 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'i9vpogfd' /* for 96 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'cxwbqspi' /* for 97 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'n6o8yxwo' /* for 98 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0cxndbw9' /* for 99 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3v7v2s4n' /* for 100 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'tvphmtge' /* for 101 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'weyn1k4f' /* for 102 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fie5u1wc' /* for 103 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'c2ans06w' /* for 104 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'jrbaajxt' /* for 105 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'emhbs2xl' /* for 106 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qibfs7ep' /* for 107 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'prol5odt' /* for 108 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'oj97u11c' /* for 109 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ykss4h59' /* for 110 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'tymhdyv2' /* for 111 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'tcp5iu3c' /* for 112 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8rshpezf' /* for 113 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'god1qwgm' /* for 114 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'g709zw1l' /* for 115 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pc3i9wzg' /* for 116 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'yxd0zr8l' /* for 117 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'izf1mvoq' /* for 118 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xm1tnjb7' /* for 119 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xlmnr5zw' /* for 120 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ds7g18bc' /* for 121 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'v4grgcso' /* for 122 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'kbv1rxix' /* for 123 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'zhdmu2z6' /* for 124 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0kuakqk7' /* for 125 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'spx6brzc' /* for 126 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xnw76c5z' /* for 127 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'clto7o6v' /* for 128 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'zz25d23a' /* for 129 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '9nl2ulhh' /* for 130 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8jho2g87' /* for 131 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'uycb2p73' /* for 132 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'o8ml953d' /* for 133 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'syyes2qy' /* for 134 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '6539nfw9' /* for 135 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '5gf8xown' /* for 136 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'rzm7wnl2' /* for 137 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '5wew9v1z' /* for 138 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'nr0r5i78' /* for 139 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'zs1stanh' /* for 140 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0t7hn92b' /* for 141 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '2ep8qhu9' /* for 142 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8qr3udq8' /* for 143 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'y5i3b6gr' /* for 144 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'axyfwuld' /* for 145 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'am50ta4f' /* for 146 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'sigbuyaa' /* for 147 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'y5cq72az' /* for 148 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'lurk5ipj' /* for 149 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'uhphcn7y' /* for 150 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'vanej6wy' /* for 151 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  's4s8o4vz' /* for 152 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '92qz52ot' /* for 153 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'o61bk0ec' /* for 154 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'hizjbz2h' /* for 155 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'gaecmbh4' /* for 156 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ee0huou0' /* for 157 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'hpsnipxr' /* for 158 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qsznlelj' /* for 159 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pnewr455' /* for 160 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'kbuecv5u' /* for 161 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0ztaqvty' /* for 162 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'nosrbzaz' /* for 163 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '05dlvasg' /* for 164 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'xml6tb9f' /* for 165 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0icyfcys' /* for 166 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'g1ghcxbi' /* for 167 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'v13dl8c4' /* for 168 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '16wvavyt' /* for 169 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'q8wrhv20' /* for 170 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'g4jcngcb' /* for 171 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'y3j3541x' /* for 172 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'gugkuuzy' /* for 173 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'nbjisbat' /* for 174 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'yfehgijf' /* for 175 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ee31i0zf' /* for 176 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'f1jcdgya' /* for 177 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'tgrnj256' /* for 178 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '3zv6fvcu' /* for 179 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  't46c7j5l' /* for 180 Seconds */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownVenturiDurValue = val),
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'askyfqvi' /* Duration */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter == 'Q')
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 5.0),
                                child: FFButtonWidget(
                                  onPressed: true
                                      ? null
                                      : () async {
                                          setAppLanguage(context, 'en');
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'nq8jvjms' /* Fan Power */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 20.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter == 'Q')
                            FlutterFlowDropDown<int>(
                              controller:
                                  _model.dropDownPowerValueController ??=
                                      FormFieldController<int>(
                                _model.dropDownPowerValue ??= FFAppState()
                                    .CurrentDeviceInfo
                                    .currentLineSpeed,
                              ),
                              options:
                                  List<int>.from([0, 11, 16, 22, 33, 49, 100]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  '877deaul' /* off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'zj2u0gc2' /* 50 % */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'pzlw1szk' /* 60 % */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'vb1qwk2b' /* 70 % */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '929nx064' /* 80 % */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'r1iyw9sz' /* 90 %  */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '6fzhkcx3' /* 100 % */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownPowerValue = val),
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'qk3zviug' /* Intervall */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter != 'V')
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 5.0),
                                child: FFButtonWidget(
                                  onPressed: true
                                      ? null
                                      : () async {
                                          setAppLanguage(context, 'en');
                                        },
                                  text: FFLocalizations.of(context).getText(
                                    'xyiz87nd' /* Interval */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 20.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter != 'V')
                            FlutterFlowDropDown<int>(
                              controller:
                                  _model.dropDownIntervalValueController ??=
                                      FormFieldController<int>(
                                _model.dropDownIntervalValue ??= FFAppState()
                                    .CurrentDeviceInfo
                                    .currentLineInterval,
                              ),
                              options: List<int>.from(
                                  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 22]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  'zvu2k8bv' /* no Intervall */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'i3rajryp' /* 1 minute on, 9 minutes off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'dldl1vc4' /* 2 minutes on, 8 minutes off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'uodzkboj' /* 3 minutes on, 7 minutes off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'r3y5ue8r' /* 4 minutes on, 6 minutes off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ee4nv3so' /* 5 minutes on, 5 minutes off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'o69tabwv' /* 6 minutes on, 4 minutes off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qk9ykjcr' /* 7 minutes on, 3 minutes off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8jbs5yxz' /* 8 minutes on,  2 minutes off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8qn959f6' /* 9 minutes on,  1 minute off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  't3n6ry8q' /* 1 minute on, 1 minute off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'm6mlu2e0' /* 2 minutes on, 2 minutes off */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownIntervalValue = val),
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 40.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'fhbeklmx' /* Intervall */,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await _model.save(context);
                              },
                              text: FFLocalizations.of(context).getText(
                                '129iy392' /* Save Line */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(DeviceMainWidget.routeName);
                              },
                              text: FFLocalizations.of(context).getText(
                                'bquyxowi' /* Ignore Changes */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 5.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await _model.delete(context);
                              },
                              text: FFLocalizations.of(context).getText(
                                '4x10ufan' /* Delete Line */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).error,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
