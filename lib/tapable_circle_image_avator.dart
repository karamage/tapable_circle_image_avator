
import 'dart:async';

import 'package:flutter/services.dart';

class TapableCircleImageAvator {
  static const MethodChannel _channel =
      const MethodChannel('tapable_circle_image_avator');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
