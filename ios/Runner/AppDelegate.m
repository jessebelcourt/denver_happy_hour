#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import "GoogleMaps/GoogleMaps.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    // Add the following line, with your API key
    [GMSServices provideAPIKey: @"AIzaSyBN0i3imvEvLJJFyg9UvN0BjOJ4GKvfC_Q"];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
