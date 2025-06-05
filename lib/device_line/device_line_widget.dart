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
                              'assets/images/LogoKreisgrngrauOhneText.png',
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
                                Text(
                                  '${FFAppState().CurrentDeviceInfo.currentLineAddress}  ${FFAppState().CurrentDeviceInfo.currentLineDayInt.toString()}',
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
                                    23
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
                                    23
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
                          if ((FFAppState().CurrentDeviceInfo.typeLetter ==
                                  'Q') ||
                              (FFAppState().CurrentDeviceInfo.typeLetter ==
                                  'V'))
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
                            FlutterFlowDropDown<int>(
                              controller:
                                  _model.dropDownChVenturiValueController ??=
                                      FormFieldController<int>(
                                _model.dropDownChVenturiValue ??= FFAppState()
                                    .CurrentDeviceInfo
                                    .currentLineFanVenturi,
                              ),
                              options: List<int>.from([200, 2, 3, 0]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  'vremqz7q' /* Venturi */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '1e6x9imm' /* Fan 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '9zxobbpg' /* Fan 3 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '87vfdpnj' /* not Set */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownChVenturiValue = val),
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
                                'hth34pe4' /* Intervall */,
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
                              options: List<int>.from([0, 1, 2, 3, 4, 5]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  'lcikb06l' /* never */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ay7wh061' /* every Minute */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'mc4shy1h' /* all 2  Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fncetov0' /* all 3 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'zsjgpbug' /* all 4 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ly4zoux5' /* all 5 Minutes */,
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
                              options: List<int>.from([0, 1, 2, 3, 4, 5]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  'y0c700fv' /* off */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'yb8p0vqg' /* for 1 Second */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'u8v46yx4' /* for 2 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'h3aceg5c' /* for 3 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'esvvfv2j' /* for 4 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'jpv4n6be' /* for 5  Seconds */,
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
                          if (FFAppState().CurrentDeviceInfo.typeLetter == 'V')
                            FlutterFlowDropDown<int>(
                              controller:
                                  _model.dropDownVentIntervalValueController ??=
                                      FormFieldController<int>(
                                _model.dropDownVentIntervalValue ??=
                                    FFAppState()
                                        .CurrentDeviceInfo
                                        .currentLineFan,
                              ),
                              options: List<int>.from([1, 2, 3, 4, 0]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  '64mrc676' /* all 1 Minute */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'txmeci1y' /* all 2 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '0q8lmw12' /* all 3 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '97cr760l' /* all 4 Minutes */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '1z4686ha' /* never */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownVentIntervalValue = val),
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
                                'xetj9zqt' /* Intervall */,
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
                                  _model.dropDownVentDurationValueController ??=
                                      FormFieldController<int>(
                                _model.dropDownVentDurationValue ??=
                                    FFAppState()
                                        .CurrentDeviceInfo
                                        .currentLineFan,
                              ),
                              options: List<int>.from([1, 2, 3, 4, 0]),
                              optionLabels: [
                                FFLocalizations.of(context).getText(
                                  '756w4g3z' /* for 1  Second */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'rjh93fz5' /* for 2 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'qy80bqvk' /* for 3 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '9vx4bz2o' /* for 4 Seconds */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'wgc537cs' /* not active */,
                                )
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownVentDurationValue = val),
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
                                '1m5642yl' /* Intervall */,
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
                          if ((FFAppState().CurrentDeviceInfo.typeLetter ==
                                  'Q') ||
                              ((FFAppState().CurrentDeviceInfo.typeLetter ==
                                      'V') &&
                                  (_model.dropDownChVenturiValue! < 199)))
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
                          if ((FFAppState().CurrentDeviceInfo.typeLetter ==
                                  'Q') ||
                              ((FFAppState().CurrentDeviceInfo.typeLetter ==
                                      'V') &&
                                  (_model.dropDownChVenturiValue! < 199)))
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
                              color: FlutterFlowTheme.of(context).secondaryText,
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
                                await actions.sendDataQuad(
                                  context,
                                  _model.checkboxMoValue!,
                                  _model.checkboxDiValue!,
                                  _model.checkboxMiValue!,
                                  _model.checkboxDoValue!,
                                  _model.checkboxFrValue!,
                                  _model.checkboxSaValue!,
                                  _model.checkboxSoValue!,
                                  FFAppState()
                                      .CurrentDeviceInfo
                                      .currentLineAddress,
                                  _model.dropDownStartHourValue!,
                                  _model.dropDownStartMinuteValue!,
                                  _model.dropDownStopHourValue!,
                                  _model.dropDownStopMinuteValue!,
                                  _model.dropDownChQuadValue!,
                                  _model.dropDownPowerValue!,
                                  _model.dropDownIntervalValue!,
                                );
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
                              onPressed: () {
                                print('settingsButtionNl pressed ...');
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
