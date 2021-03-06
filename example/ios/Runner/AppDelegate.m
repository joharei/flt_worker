#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import <flt_worker/FltWorkerPlugin.h>
#import <path_provider/FLTPathProviderPlugin.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  // set a callback to register all plugins to a headless engine instance
  FltWorkerPlugin.registerPlugins = ^(NSObject<FlutterPluginRegistry> *registry) {
    [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
  };
  
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  NSLog(@"app did enter background…");
}

@end
