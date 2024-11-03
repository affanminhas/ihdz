import '/components/footer_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reg_login_widget.dart' show RegLoginWidget;
import 'package:flutter/material.dart';

class RegLoginModel extends FlutterFlowModel<RegLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? checkUser;
  // State field(s) for name_Create widget.
  FocusNode? nameCreateFocusNode;
  TextEditingController? nameCreateTextController;
  String? Function(BuildContext, String?)? nameCreateTextControllerValidator;
  // State field(s) for mobile_Create widget.
  FocusNode? mobileCreateFocusNode;
  TextEditingController? mobileCreateTextController;
  String? Function(BuildContext, String?)? mobileCreateTextControllerValidator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    passwordVisibility = false;
    passwordCreateVisibility = false;
    passwordConfirmVisibility = false;
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    nameCreateFocusNode?.dispose();
    nameCreateTextController?.dispose();

    mobileCreateFocusNode?.dispose();
    mobileCreateTextController?.dispose();

    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();

    footerModel.dispose();
  }
}
