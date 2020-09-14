#import "TapableCircleImageAvatorPlugin.h"
#if __has_include(<tapable_circle_image_avator/tapable_circle_image_avator-Swift.h>)
#import <tapable_circle_image_avator/tapable_circle_image_avator-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "tapable_circle_image_avator-Swift.h"
#endif

@implementation TapableCircleImageAvatorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTapableCircleImageAvatorPlugin registerWithRegistrar:registrar];
}
@end
