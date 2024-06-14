import 'dart:math';

import 'package:flutter/material.dart';

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallingPage extends StatelessWidget {
  const CallingPage({super.key, required this.callId});
  final String callId;
  @override
  Widget build(BuildContext context) {
    final localUserId = Random().nextInt(9999) + 1000;
    return Scaffold(
      body: ZegoUIKitPrebuiltCall(
          appID:
              1863576415, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
          appSign:
              '50fe36f9373422b3c01375b7f5ca6f438e9bf40fd9cb00830269934c693742df', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
          userID: localUserId.toString(),
          userName: 'User $localUserId',
          callID: callId,
          // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
          config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()),
    );
  }
}
