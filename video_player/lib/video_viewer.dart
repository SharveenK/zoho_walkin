import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class VideoPlayer extends StatelessWidget {
  String viewType = 'native_video_player';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getAndroidView(),
    );
  }

  Widget getAndroidView() {
    if (Platform.isAndroid) {
      return AndroidView(
        viewType: viewType,
        onPlatformViewCreated: onPlatFormVideo,
      );
    }
    return Container(
      color: Colors.red,
    );
  }

  Future<void> onPlatFormVideo(int id) async {
    MethodChannel _channel = MethodChannel('native_video_player');
    _channel.setMethodCallHandler(_handleMethodCall);
  }

  Future<dynamic> _handleMethodCall(MethodCall call) {
    switch (call.method) {
      case 'onPlaybackReady':
      // onPlaybackReady();
      case 'onPlaybackEnded':
      // onPlaybackEnded();
      case 'onError':
        // final errorCode = call.arguments['errorCode'] as int;
        // final errorMessage = call.arguments['errorMessage'] as String;
        final message = call.arguments as String;
      // onError(message);
    }
    throw UnsupportedError('Unrecognized method ${call.method}');
  }
}
