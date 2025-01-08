import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/footer_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'zuhoerer_statuspage_model.dart';
export 'zuhoerer_statuspage_model.dart';

class ZuhoererStatuspageWidget extends StatefulWidget {
  const ZuhoererStatuspageWidget({super.key});

  @override
  State<ZuhoererStatuspageWidget> createState() => _ZuhoererStatuspageWidgetState();
}

class _ZuhoererStatuspageWidgetState extends State<ZuhoererStatuspageWidget> {
  late ZuhoererStatuspageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ZuhoererStatuspageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ZuhoererRecord>>(
      stream: queryZuhoererRecord(
        queryBuilder: (zuhoererRecord) => zuhoererRecord.where(
          'uid',
          isEqualTo: currentUserUid,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ZuhoererRecord> zuhoererStatuspageZuhoererRecordList = snapshot.data!;
        final zuhoererStatuspageZuhoererRecord =
            zuhoererStatuspageZuhoererRecordList.isNotEmpty ? zuhoererStatuspageZuhoererRecordList.first : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.black,
            endDrawer: Drawer(
              elevation: 16,
              child: wrapWithModel(
                model: _model.menuModel,
                updateCallback: () => safeSetState(() {}),
                child: MenuWidget(),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.07, -0.7),
                                    child: Text(
                                      'Wilkommen\nschön dass du deine Zeit \ninvestierst um  einsamen\nMenschen zu hörst.\nDu kennst die Regeln? \nWenn nicht, liess Sie Dir \nbitte vor den Online \ngehen nochmals durch.\n\n\n\nViel Spass',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                    child: Text(
                                      'Hier schaltest du dich ONLINE\n\nVergiss nicht beim Verlassen \nwieder OFFLINE zu sestzten',
                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                    child: Text(
                                      'OFFLINE           ONLINE',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                    child: Switch.adaptive(
                                      value: _model.switchValue ??= zuhoererStatuspageZuhoererRecord!.active,
                                      onChanged: !zuhoererStatuspageZuhoererRecord!.isVerified
                                          ? null
                                          : (newValue) async {
                                              safeSetState(() => _model.switchValue = newValue!);
                                              if (newValue!) {
                                                await zuhoererStatuspageZuhoererRecord!.reference
                                                    .update(createZuhoererRecordData(
                                                  active: _model.switchValue,
                                                ));
                                                _model.userFavorite = await queryUsersRecordOnce(
                                                  queryBuilder: (usersRecord) => usersRecord.where(
                                                    'favourites',
                                                    arrayContains: zuhoererStatuspageZuhoererRecord?.reference,
                                                  ),
                                                  singleRecord: true,
                                                ).then((s) => s.firstOrNull);

                                                safeSetState(() {});
                                              } else {
                                                await zuhoererStatuspageZuhoererRecord!.reference
                                                    .update(createZuhoererRecordData(
                                                  active: _model.switchValue,
                                                ));
                                              }
                                            },
                                      activeColor: Color(0xFFFEFFFF),
                                      activeTrackColor: FlutterFlowTheme.of(context).secondary,
                                      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                                      inactiveThumbColor: Colors.white,
                                    ),
                                  ),
                                  if (!zuhoererStatuspageZuhoererRecord!.isVerified)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed('ProfilZuHoerer');
                                        },
                                        text: 'Bitte vervollständigen Sie Ihr Profil',
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          size: 15,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40,
                                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                                          iconAlignment: IconAlignment.end,
                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                          color: Colors.black,
                                          textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context).secondary,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                    child: StreamBuilder<List<UserCallRequestsRecord>>(
                                      stream: queryUserCallRequestsRecord(
                                        queryBuilder: (userCallRequestsRecord) => userCallRequestsRecord.where(
                                          'requested_to',
                                          isEqualTo: zuhoererStatuspageZuhoererRecord?.reference,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                  FlutterFlowTheme.of(context).primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<UserCallRequestsRecord> containerUserCallRequestsRecordList =
                                            snapshot.data!;

                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: Visibility(
                                            visible: zuhoererStatuspageZuhoererRecord!.isVerified &&
                                                (containerUserCallRequestsRecordList.isNotEmpty),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor: Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed('MeetRequests');
                                              },
                                              child: Container(
                                                width: 280,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius: BorderRadius.circular(8),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(context).secondary,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Align(
                                                        alignment: AlignmentDirectional(0, 0),
                                                        child: Text(
                                                          'Eingehende Anrufe',
                                                          textAlign: TextAlign.start,
                                                          style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                fontFamily: 'Inter',
                                                                letterSpacing: 0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 30,
                                                        height: 30,
                                                        decoration: BoxDecoration(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          shape: BoxShape.circle,
                                                        ),
                                                        child: Align(
                                                          alignment: AlignmentDirectional(0, 0),
                                                          child: Text(
                                                            valueOrDefault<String>(
                                                              containerUserCallRequestsRecordList.length.toString(),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                  fontFamily: 'Inter',
                                                                  color: Colors.white,
                                                                  letterSpacing: 0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 50),
                            child: FFButtonWidget(
                              onPressed: () async {
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();

                                context.goNamedAuth('HomePage', context.mounted);
                              },
                              text: 'Abmelden',
                              options: FFButtonOptions(
                                height: 40,
                                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                color: FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                      fontFamily: 'Inter Tight',
                                      color: FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).secondary,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: wrapWithModel(
                      model: _model.footerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: FooterWidget(),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.05, -1.03),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/ihdz-fbnv6x.appspot.com/o/IHDZ%202%20Logo.png?alt=media&token=56d6b641-6916-44e8-ab8d-848d49214441',
                          width: 147,
                          height: 76,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.88, -1.04),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                        child: Icon(
                          Icons.menu,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
