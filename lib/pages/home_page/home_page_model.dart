import '/components/footer_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Footer component.
  late FooterModel footerModel;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    footerModel = createModel(context, () => FooterModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    footerModel.dispose();
    menuModel.dispose();
  }
}
