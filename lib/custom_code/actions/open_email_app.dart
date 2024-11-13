// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openEmailApp() async {
  final mailtoLink = Mailto(
    to: ['ihdz.ichhoerdirzu@gmail.com'],
    subject: 'Having Issue',
    body: 'I am having issue with the app can you guide me?',
  );

  try {
    await launch('$mailtoLink');
  } catch (e) {
    print('Can not launch email app');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
