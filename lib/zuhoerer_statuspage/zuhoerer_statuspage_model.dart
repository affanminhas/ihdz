import '/components/footer_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'zuhoerer_statuspage_widget.dart' show ZuhoererStatuspageWidget;
import 'package:flutter/material.dart';

class ZuhoererStatuspageModel
    extends FlutterFlowModel<ZuhoererStatuspageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    footerModel.dispose();
  }
}
