import Flutter
import UIKit

public class SwiftTapableCircleImageAvatorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "tapable_circle_image_avator", binaryMessenger: registrar.messenger())
    let instance = SwiftTapableCircleImageAvatorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
