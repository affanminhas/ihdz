import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_meet_room_widget.dart' show CreateMeetRoomWidget;
import 'package:flutter/material.dart';

class CreateMeetRoomModel extends FlutterFlowModel<CreateMeetRoomWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - generateRandomRoomId] action in CreateMeetRoom widget.
  String? randomId;
  // State field(s) for ListenerName widget.
  FocusNode? listenerNameFocusNode;
  TextEditingController? listenerNameTextController;
  String? Function(BuildContext, String?)? listenerNameTextControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  PushNotificationUsersRecord? pushNotifUser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    listenerNameFocusNode?.dispose();
    listenerNameTextController?.dispose();

    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();
  }
}
