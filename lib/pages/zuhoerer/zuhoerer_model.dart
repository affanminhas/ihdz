import '/backend/backend.dart';
import '/components/footer_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'zuhoerer_widget.dart' show ZuhoererWidget;
import 'package:flutter/material.dart';

class ZuhoererModel extends FlutterFlowModel<ZuhoererWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for Checkbox widget.
  Map<ZuhoererRecord, bool> checkboxValueMap = {};
  List<ZuhoererRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

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
