import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'auth_check_view_model.dart';
export 'auth_check_view_model.dart';

class AuthCheckViewWidget extends StatefulWidget {
  /// This page is to check when user loggedIn so what type of user he is like
  /// if he is old person or listner.
  const AuthCheckViewWidget({super.key});

  @override
  State<AuthCheckViewWidget> createState() => _AuthCheckViewWidgetState();
}

class _AuthCheckViewWidgetState extends State<AuthCheckViewWidget> {
  late AuthCheckViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthCheckViewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await authManager.refreshUser();
      _model.userCollection = await queryUsersRecordCount(
        queryBuilder: (usersRecord) => usersRecord.where(
          'email',
          isEqualTo: currentUserEmail,
        ),
      );
      if ((_model.userCollection! > 0) && currentUserEmailVerified) {
        context.pushNamed('Zuhoerer');
      } else {
        context.pushNamed('ZuhoererStatuspage');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
      ),
    );
  }
}
