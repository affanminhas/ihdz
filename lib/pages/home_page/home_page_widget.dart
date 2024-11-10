import '/components/footer_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      endDrawer: SizedBox(
        width: 300.0,
        child: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.menuModel,
            updateCallback: () => safeSetState(() {}),
            child: const MenuWidget(),
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(1.0, 0.0),
              child: Container(
                width: 82.0,
                height: 67.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF080000),
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    scaffoldKey.currentState!.openEndDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 80.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/ihdz-fbnv6x.appspot.com/o/IHDZ%20Start.png?alt=media&token=52befd3a-c134-408f-9932-c9066b90db44',
                  width: 396.0,
                  height: 500.0,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.7, -10.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('RegLogin');
                },
                text: 'Start',
                options: FFButtonOptions(
                  width: 150.0,
                  height: 50.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Inter Tight',
                        color: const Color(0xFF03FFD9),
                        fontSize: 125.0,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
                child: Text(
                  'ZuHörer melden sich bitte im Menu an',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: wrapWithModel(
                  model: _model.footerModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const FooterWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
