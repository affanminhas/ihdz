// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

Future<void> launchJitsi() async {
  final _jitsiMeetPlugin = JitsiMeet();

  var options = JitsiMeetConferenceOptions(
    room: 'flutterflowtest',
    //serverURL: "https://meet.jit.si",
    serverURL: "https://meet.ffmuc.net/",
    // Or use your Jitsi server URL
    configOverrides: {
      "startWithAudioMuted": false,
      "startWithVideoMuted": false,
      "audioQuality": {
        "stereo": true,
        "opusMaxAverageBitrate":
            192000, // Value to fit the 6000 to 510000 range.
        "enableOpusDtx": false,
      },
    },
    featureFlags: {
      FeatureFlags.addPeopleEnabled: true,
      FeatureFlags.chatEnabled: true,
      FeatureFlags.meetingNameEnabled: true,
      FeatureFlags.videoMuteEnabled: true,
      FeatureFlags.audioFocusDisabled: false,
      FeatureFlags.welcomePageEnabled: true,
      FeatureFlags.preJoinPageEnabled: true,
      FeatureFlags.unsafeRoomWarningEnabled: true,
      FeatureFlags.resolution: FeatureFlagVideoResolutions.resolution720p,
      FeatureFlags.audioMuteButtonEnabled: true,
      FeatureFlags.audioOnlyButtonEnabled: true,
    },
    userInfo: JitsiMeetUserInfo(
      displayName: "Anonymous",
    ),
  );

  var listener = JitsiMeetEventListener(
    conferenceJoined: (url) {
      debugPrint("Conference Joined: url: $url");
    },
    conferenceTerminated: (url, error) {
      debugPrint("Conference Terminated: url: $url, error: $error");
    },
    conferenceWillJoin: (url) {
      debugPrint("Conference Will Join: url: $url");
    },
    participantLeft: (participantId) {
      debugPrint("Participant Left: $participantId");
    },
    readyToClose: () {
      debugPrint("Ready to Close");
    },
  );

  await _jitsiMeetPlugin.join(options, listener);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
