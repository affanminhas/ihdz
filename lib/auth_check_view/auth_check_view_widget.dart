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
      if (FFAppState().isListener == true) {
        context.pushNamed('ZuhoererStatuspage');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Going to zuhorer status',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      } else {
        context.goNamed('Zuhoerer');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Going to zuhorer',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      }
    });
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
