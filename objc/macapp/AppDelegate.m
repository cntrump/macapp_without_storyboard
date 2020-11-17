//
//  AppDelegate.m
//  macapp
//
//  Created by v on 2020/11/17.
//

#import "AppDelegate.h"
#import "WindowController.h"
#import "ViewController.h"

@interface AppDelegate () {
    WindowController *_mainWindowController;
}


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _mainWindowController = [[WindowController alloc] initWithContentSize:NSMakeSize(400, 270)];
    _mainWindowController.contentViewController = [[ViewController alloc] init];
    [_mainWindowController showWindow:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
