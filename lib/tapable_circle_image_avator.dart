/*
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
*/

import 'package:flutter/material.dart';

class TapableCircleImageAvator extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final double size; //Circle diameter
  final void Function(String) onTap;

  TapableCircleImageAvator({@required this.id, @required this.name, this.imageUrl, this.size = 48.0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) onTap(id);
      }, // handle your image tap here
      child: CircleAvatar(
        radius: size / 2,
        backgroundColor: Color.fromRGBO(212, 232, 232, 1.0),
        foregroundColor: Colors.white,
        child: imageUrl != null ?
          ClipOval(
            child: Image.network(
                imageUrl,
                height: size,
                width: size,
                fit: BoxFit.cover),
          )
          :Text(name.length > 0 ? name[0]:""),
      ),
    );
  }
}
