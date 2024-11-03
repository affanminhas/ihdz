import '/flutter_flow/flutter_flow_util.dart';
import 'passwortvergessen_widget.dart' show PasswortvergessenWidget;
import 'package:flutter/material.dart';

class PasswortvergessenModel extends FlutterFlowModel<PasswortvergessenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
