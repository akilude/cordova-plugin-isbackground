#import "isBackground.h"

@implementation isBackground

- (void)currentState:(CDVInvokedUrlCommand*)command
{
    BOOL appState = YES;
    UIApplicationState state = [[UIApplication sharedApplication] applicationState];
    if (state == UIApplicationStateBackground || state == UIApplicationStateInactive){
        //Do checking here.
        appState = NO;
    }
    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsInt:@(appState).integerValue];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end