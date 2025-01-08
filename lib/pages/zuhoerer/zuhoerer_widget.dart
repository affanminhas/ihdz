import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/footer_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'zuhoerer_model.dart';
export 'zuhoerer_model.dart';

class ZuhoererWidget extends StatefulWidget {
  const ZuhoererWidget({super.key});

  @override
  State<ZuhoererWidget> createState() => _ZuhoererWidgetState();
}

class _ZuhoererWidgetState extends State<ZuhoererWidget> {
  late ZuhoererModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ZuhoererModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        queryBuilder: (usersRecord) => usersRecord.where(
          'email',
          isEqualTo: currentUserEmail,
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
        List<UsersRecord> zuhoererUsersRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final zuhoererUsersRecord = zuhoererUsersRecordList.isNotEmpty ? zuhoererUsersRecordList.first : null;

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
            appBar: AppBar(
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              title: Align(
                alignment: AlignmentDirectional(0.5, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/ihdz-fbnv6x.appspot.com/o/IHDZ%202%20Logo.png?alt=media&token=56d6b641-6916-44e8-ab8d-848d49214441',
                      width: 134,
                      height: 68,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
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
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              toolbarHeight: 80,
              elevation: 0,
            ),
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: StreamBuilder<List<ZuhoererRecord>>(
                    stream: queryZuhoererRecord(
                      queryBuilder: (zuhoererRecord) => zuhoererRecord.orderBy('created_time', descending: true),
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
                      List<ZuhoererRecord> listViewZuhoererRecordList = snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewZuhoererRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewZuhoererRecord = listViewZuhoererRecordList[listViewIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                            child: Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context).alternate,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Opacity(
                                        opacity: listViewZuhoererRecord.active ? 1.0 : 0.3,
                                        child: Padding(
                                          padding: EdgeInsets.all(2),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(50),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                listViewZuhoererRecord.photoUrl,
                                                'https://firebasestorage.googleapis.com/v0/b/ihdz-fbnv6x.appspot.com/o/user.png?alt=media&token=53d5edb0-0cb0-4514-a436-6bec266e52d0',
                                              ),
                                              width: 44,
                                              height: 44,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                                            child: Text(
                                              listViewZuhoererRecord.active ? 'ONLINE' : 'BELEGET',
                                              style: FlutterFlowTheme.of(context).labelMedium.override(
                                                    fontFamily: 'Inter',
                                                    color: listViewZuhoererRecord.active
                                                        ? FlutterFlowTheme.of(context).primaryText
                                                        : Color(0xFFF92836),
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                                            child: Text(
                                              listViewZuhoererRecord.displayName,
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 5, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 8,
                                      buttonSize: 50,
                                      fillColor: listViewZuhoererRecord.active
                                          ? FlutterFlowTheme.of(context).secondary
                                          : Color(0xFF9FEAE0),
                                      icon: Icon(
                                        Icons.add_ic_call,
                                        color: FlutterFlowTheme.of(context).info,
                                        size: 35,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                          'CreateMeetRoom',
                                          queryParameters: {
                                            'listnerRef': serializeParam(
                                              listViewZuhoererRecord.reference,
                                              ParamType.DocumentReference,
                                            ),
                                            'listener': serializeParam(
                                              listViewZuhoererRecord,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'listener': listViewZuhoererRecord,
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                                          child: Text(
                                            'FAVORIT',
                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(15, 5, 0, 0),
                                          child: Theme(
                                            data: ThemeData(
                                              checkboxTheme: CheckboxThemeData(
                                                visualDensity: VisualDensity.compact,
                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                              ),
                                              unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
                                            ),
                                            child: Checkbox(
                                              value: _model.checkboxValueMap[listViewZuhoererRecord] ??=
                                                  zuhoererUsersRecord!.favourites
                                                      .contains(listViewZuhoererRecord.reference),
                                              onChanged: (newValue) async {
                                                safeSetState(
                                                    () => _model.checkboxValueMap[listViewZuhoererRecord] = newValue!);
                                                if (newValue!) {
                                                  await zuhoererUsersRecord!.reference.update({
                                                    ...mapToFirestore(
                                                      {
                                                        'favourites':
                                                            FieldValue.arrayUnion([listViewZuhoererRecord.reference]),
                                                      },
                                                    ),
                                                  });
                                                  _model.pushNotifUser = await queryPushNotificationUsersRecordOnce(
                                                    queryBuilder: (pushNotificationUsersRecord) =>
                                                        pushNotificationUsersRecord.where(
                                                      'email',
                                                      isEqualTo: listViewZuhoererRecord.email,
                                                    ),
                                                    singleRecord: true,
                                                  ).then((s) => s.firstOrNull);
                                                  triggerPushNotification(
                                                    notificationTitle: 'Lieblingshörer',
                                                    notificationText:
                                                        '${zuhoererUsersRecord?.displayName} markiere dich als Favorit',
                                                    notificationImageUrl:
                                                        'https://firebasestorage.googleapis.com/v0/b/ihdz-fbnv6x.appspot.com/o/IHDZ%202%20Logo.png?alt=media&token=56d6b641-6916-44e8-ab8d-848d49214441',
                                                    userRefs: [_model.pushNotifUser!.reference],
                                                    initialPageName: 'MeetRequests',
                                                    parameterData: {},
                                                  );

                                                  safeSetState(() {});
                                                } else {
                                                  await zuhoererUsersRecord!.reference.update({
                                                    ...mapToFirestore(
                                                      {
                                                        'favourites':
                                                            FieldValue.arrayRemove([listViewZuhoererRecord.reference]),
                                                      },
                                                    ),
                                                  });
                                                }
                                              },
                                              side: BorderSide(
                                                width: 2,
                                                color: FlutterFlowTheme.of(context).alternate,
                                              ),
                                              activeColor: FlutterFlowTheme.of(context).secondary,
                                              checkColor: FlutterFlowTheme.of(context).info,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: wrapWithModel(
                    model: _model.footerModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FooterWidget(),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
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
                        color: Colors.black,
                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Inter Tight',
                              color: FlutterFlowTheme.of(context).secondary,
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
