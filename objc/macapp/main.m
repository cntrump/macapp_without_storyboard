//
//  main.m
//  macapp
//
//  Created by v on 2020/11/17.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"

static AppDelegate *appDelegate;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        appDelegate = [[AppDelegate alloc] init];
        NSApplication.sharedApplication.delegate = appDelegate;
    }
    return NSApplicationMain(argc, argv);
}
