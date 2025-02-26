// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_email_sender/flutter_email_sender.dart';

Future<void> openMailBox() async {
  final Email email = Email(
    body: 'Hi There',
    subject: 'Issue',
    recipients: ['ihdz.ichhoerdirzu@gmail.com'],
    isHTML: false,
  );

  await FlutterEmailSender.send(email);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
