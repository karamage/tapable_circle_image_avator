import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tapable_circle_image_avator/tapable_circle_image_avator.dart';

void main() {
  const MethodChannel channel = MethodChannel('tapable_circle_image_avator');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    /*
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
    */
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  /*
  test('getPlatformVersion', () async {
    expect(await TapableCircleImageAvator.platformVersion, '42');
  });
  */
}
