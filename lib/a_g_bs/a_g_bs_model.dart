import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_g_bs_widget.dart' show AGBsWidget;
import 'package:flutter/material.dart';

class AGBsModel extends FlutterFlowModel<AGBsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }
}
