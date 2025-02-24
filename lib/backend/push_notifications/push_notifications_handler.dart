import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.black,
          child: Center(
            child: Image.asset(
              'assets/images/App_Store_Icon_IHDZ.png',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage': ParameterData.none(),
  'RegLogin': ParameterData.none(),
  'Zuhoerer': ParameterData.none(),
  'VideoCal': ParameterData.none(),
  'ZuhoererStatuspage': ParameterData.none(),
  'ZuhoererCallEingan': ParameterData.none(),
  'VideoCallOlder': ParameterData.none(),
  'ProfilZuHoerer': ParameterData.none(),
  'SettingsUSER': ParameterData.none(),
  'SettingsZuhoerer': ParameterData.none(),
  'Impressum': ParameterData.none(),
  'AGBs': ParameterData.none(),
  'Datenschutz': ParameterData.none(),
  'RegelnNutzer': ParameterData.none(),
  'RegLoginZuhoerer': ParameterData.none(),
  'ProfilUser': ParameterData.none(),
  'Bedienungsanleitung': ParameterData.none(),
  'AuthCheckView': ParameterData.none(),
  'Passwortvergessen': ParameterData.none(),
  'WEBViewTest': ParameterData.none(),
  'WebViewTEST2': ParameterData.none(),
  'MeetRequests': ParameterData.none(),
  'CreateMeetRoom': (data) async => ParameterData(
        allParams: {
          'listnerRef': getParameter<DocumentReference>(data, 'listnerRef'),
          'listener': await getDocumentParameter<ZuhoererRecord>(
              data, 'listener', ZuhoererRecord.fromSnapshot),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
