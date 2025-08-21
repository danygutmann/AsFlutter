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
                                  10.0, 10.0, 10.0, 5.0),
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
                                    '3agoxb1s' /* Begin: */,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState()
                                          .CurrentDeviceInfo
                                          .typeLetter ==
                                      'V')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'dh05wxst' /* All */,
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
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  if (FFAppState()
                                          .CurrentDeviceInfo
                                          .typeLetter ==
                                      'V')
                                    FlutterFlowDropDown<int>(
                                      controller: _model
                                              .dropDownVenturiIntValueController ??=
                                          FormFieldController<int>(
                                        _model.dropDownVenturiIntValue ??=
                                            FFAppState()
                                                .CurrentDeviceInfo
                                                .currentLineVenturiInterval,
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
                                        60
                                      ]),
                                      optionLabels: [
                                        FFLocalizations.of(context).getText(
                                          '31ahxrdi' /* 1 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '72z26jb0' /* 2 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'v0hx1m22' /* 3 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'o6uzr4sz' /* 4 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '8pk20lj3' /* 5 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4eisa2wo' /* 6 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ezelaz7r' /* 7 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'zb94z5fr' /* 8 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'a6plkxy2' /* 9 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'd5bjuznh' /* 10 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2iu1hfyp' /* 11 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '3g8ms350' /* 12 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '8zs1w1fr' /* 13 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4rrk7ouw' /* 14 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'r6e3py8b' /* 15 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'orgz9lw9' /* 16 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'tbalnxyu' /* 17 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'lvhlcnyk' /* 18 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '9geu1tah' /* 19 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '8lj91m3r' /* 20 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rdj8hjur' /* 21 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'vzubyus1' /* 22 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5blaumsg' /* 23 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qba5arvq' /* 24 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'con2upfs' /* 25 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qr94aaxp' /* 26 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wen0cser' /* 27 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'skf2lsew' /* 28 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'd9vu6zfy' /* 29 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'x8dm052k' /* 30 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qcsqsdla' /* 31 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4fn6sqi4' /* 32 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2mlhf8to' /* 33 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'r9qziyef' /* 34 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ktwfvzbi' /* 35 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '1ubtlyy8' /* 36 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wn4zehpl' /* 37 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'kqrn87fh' /* 38 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '8g8uwt75' /* 39 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2eyvkyd9' /* 40 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'i7ukzjwd' /* 41 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7yieaamw' /* 42 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'eihr49ch' /* 43 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jy8vnn7g' /* 44 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ijc9xrqw' /* 45 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'pwvre5yd' /* 46 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '1wkixvod' /* 47 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '9dux6vvy' /* 48 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'bab5nkiq' /* 49 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'hskxfak6' /* 50 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'w9arwhkn' /* 51 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '8pb8ea8f' /* 52 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'e3q910ll' /* 53 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'toh24fra' /* 54 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'vxri8jac' /* 55 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'xqobopuj' /* 56 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7rz4xxmb' /* 57 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4o2svq0p' /* 58 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '08fnxjm0' /* 59 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'byaq347i' /* 60 */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownVenturiIntValue = val),
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
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'o4ljwpzr' /* Intervall */,
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
                                          5.0, 0.0, 5.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  if (FFAppState()
                                          .CurrentDeviceInfo
                                          .typeLetter ==
                                      'V')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'v3t9nhc0' /* Minutes */,
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
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          if (FFAppState().CurrentDeviceInfo.typeLetter == 'V')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState()
                                          .CurrentDeviceInfo
                                          .typeLetter ==
                                      'V')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '85dzdvc9' /* For */,
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
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  if (FFAppState()
                                          .CurrentDeviceInfo
                                          .typeLetter ==
                                      'V')
                                    FlutterFlowDropDown<int>(
                                      controller: _model
                                              .dropDownVenturiDurValueController ??=
                                          FormFieldController<int>(
                                        _model.dropDownVenturiDurValue ??=
                                            FFAppState()
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
                                          'ftu0ytmq' /* 1 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '6eot3ixl' /* 2 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'b8cl4njg' /* 3 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'q7cka60b' /* 4 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'syvqvhh3' /* 5 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'f6gousl6' /* 6 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ydam740a' /* 7 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rbe5l7s7' /* 8 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jstxnjx7' /* 9 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'b0nzyk5z' /* 10 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ici6ag0d' /* 11 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'nfzagmzx' /* 12 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wtz1ypth' /* 13 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '3ppvzm5b' /* 14 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'tnkc79fn' /* 15 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'kygd25u3' /* 16 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'cutoxi8s' /* 17 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '9a0b5ngu' /* 18 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'r6x5omvy' /* 19 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4fgv4g3e' /* 20 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'choqkw1a' /* 21 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ecnsf9na' /* 22 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jdnjantq' /* 23 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'o6totfs3' /* 24 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qett1tjt' /* 25 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'sjj02o4n' /* 26 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rosq5kzm' /* 27 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mmw4621y' /* 28 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ydjawdxq' /* 29 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rbfvzchp' /* 30 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '0umn1hl3' /* 31 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'pv9qupit' /* 32 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7pmdkh9a' /* 33 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'w4pxuuo6' /* 34 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'o4cvkfyu' /* 35 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'iz5gg4mv' /* 36 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'xvytsdj3' /* 37 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ya2rnf6p' /* 38 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'x2cbac99' /* 39 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7hx60c4k' /* 40 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'lrsjxvwt' /* 41 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'z9e4ws8e' /* 42 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'uwa3mo2l' /* 43 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'dngjfdj4' /* 44 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'w6wumvrh' /* 45 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'fejseood' /* 46 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'bboh73n4' /* 47 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '1fjeq8ba' /* 48 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ax9ddsv9' /* 49 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '3kyl0poo' /* 50 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qrp2n4sg' /* 51 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'en1aw3ca' /* 52 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'h5f32rzz' /* 53 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'm1gsjnqp' /* 54 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'x4r83air' /* 55 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4xu48occ' /* 56 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '3xbe54ij' /* 57 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'pnkj8iop' /* 58 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'm8id9uw8' /* 59 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'yloj7cqa' /* 60 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'w2pxooau' /* 61 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'y6l1ufa9' /* 62 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '08y1ix7b' /* 63 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'tc9tvred' /* 64 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'huz519qz' /* 65 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '0zqvpahs' /* 66 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '095ybp26' /* 67 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2spxajsb' /* 68 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2lpsl349' /* 69 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mz9ohszf' /* 70 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'h4vunrs5' /* 71 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'cnnzsi6q' /* 72 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '13kqdoj4' /* 73 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          's2fbhy3s' /* 74 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'tpm02zxy' /* 75 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2zu9o7uf' /* 76 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4cvtty6o' /* 77 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wg5x98k3' /* 78 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jc6r793a' /* 79 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '9o44a56h' /* 80 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'linm2hye' /* 81 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ooun3pbq' /* 82 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'nq5naqtr' /* 83 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'hf0iw15p' /* 84 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'uy5hbgxm' /* 85 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'pcs3a8tn' /* 86 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'prw3rmap' /* 87 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5pup67tk' /* 88 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7csdd9x5' /* 89 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ag16t9d8' /* 90 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '0nykbtwt' /* 91 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jjpakge7' /* 92 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wei5uku1' /* 93 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2xmlvor8' /* 94 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wftdrt51' /* 95 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'x6ddenr2' /* 96 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'b7v8wvbf' /* 97 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ooefhq46' /* 98 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'v1g0vm9g' /* 99 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'sf9v6jrd' /* 100 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'j52lwp49' /* 101 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'vxofafg4' /* 102 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'yxmha4mw' /* 103 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'webidw0x' /* 104 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '1qw1euav' /* 105 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2vg77trx' /* 106 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '1m34squl' /* 107 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5f01jr2b' /* 108 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mbnde8k0' /* 109 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'lase7q51' /* 110 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'wfpnqn9x' /* 111 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'fcmpoyxl' /* 112 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'owoieqkx' /* 113 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rx05uq4j' /* 114 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7299hgao' /* 115 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'agnuz6at' /* 116 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4as2rgvk' /* 117 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'nuw73fbv' /* 118 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'phzn48q8' /* 119 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rvaytvll' /* 120 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'oba0fbo7' /* 121 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2ilycghq' /* 122 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qubrllvh' /* 123 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'etbp3lmz' /* 124 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'uuwu5a7t' /* 125 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'and67cvu' /* 126 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '0nmrz1gb' /* 127 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '228zen3z' /* 128 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'hi6l0qyf' /* 129 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'uh3fisbt' /* 130 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'hbup3ia3' /* 131 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'vmxdqcl0' /* 132 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'ewd1312y' /* 133 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2lb6b4sq' /* 134 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'dutx7mlv' /* 135 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'w1ju8sio' /* 136 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7fvj0ty4' /* 137 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '7z30ew98' /* 138 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '6eqylj85' /* 139 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'vxg5oy9v' /* 140 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '07wswg0c' /* 141 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'bt597rkd' /* 142 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '0w8knt58' /* 143 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5tdta0j2' /* 144 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'kw066yo8' /* 145 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'h1du0lyo' /* 146 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2r240fj2' /* 147 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jjnjs61g' /* 148 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'xz9ciosz' /* 149 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'p0ob65an' /* 150 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'd9riy5oo' /* 151 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'r26n88ae' /* 152 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mpdjbp08' /* 153 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '4n04heia' /* 154 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5m20y0jb' /* 155 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'o71w471k' /* 156 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'm34tab0a' /* 157 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'e69thxmn' /* 158 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'rsskf5h2' /* 159 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qjr2j1p9' /* 160 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '62gpb7i0' /* 161 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'oyd1ityj' /* 162 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'vtfumw7e' /* 163 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '3c3xgznz' /* 164 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '5wic1jga' /* 165 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'qamf890e' /* 166 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jdyrq9pk' /* 167 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '0d3kletn' /* 168 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'kuv6elby' /* 169 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'oo1dj77d' /* 170 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'uphmvgjd' /* 171 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'hxbkb2by' /* 172 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'cyef5o7g' /* 173 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'pfns4oec' /* 174 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'b4o0a73u' /* 175 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'mitipc6b' /* 176 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'npuiap5b' /* 177 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '851s1vcx' /* 178 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          '2mdnggp5' /* 179 */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'jlkq85g4' /* 180 */,
                                        )
                                      ],
                                      onChanged: (val) => safeSetState(() =>
                                          _model.dropDownVenturiDurValue = val),
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
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'askyfqvi' /* Duration */,
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
                                          10.0, 0.0, 10.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  if (FFAppState()
                                          .CurrentDeviceInfo
                                          .typeLetter ==
                                      'V')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '7w9gon8y' /* Seconds */,
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
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
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
