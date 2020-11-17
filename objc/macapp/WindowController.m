//
//  WindowController.m
//  macapp
//
//  Created by v on 2020/11/17.
//

#import "WindowController.h"

@interface WindowController () <NSWindowDelegate>

@end

@implementation WindowController

- (instancetype)initWithContentSize:(NSSize)size {
    NSWindowStyleMask styleMask = NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable |
                                    NSWindowStyleMaskTitled | NSWindowStyleMaskUnifiedTitleAndToolbar | NSWindowStyleMaskFullSizeContentView;

    NSWindow *window = [[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, size.width, size.height)
                                                   styleMask:styleMask
                                                     backing:NSBackingStoreBuffered
                                                       defer:YES];

    window.titlebarAppearsTransparent = YES;

    if (self = [super initWithWindow:window]) {
        self.window.delegate = self;
    }

    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)setContentViewController:(NSViewController *)contentViewController {
    NSRect frame = self.window.frame;
    frame.origin = NSZeroPoint;
    contentViewController.view.frame = frame;
    super.contentViewController = contentViewController;
}

- (void)showWindow:(id)sender {
    [self.window center];
    [super showWindow:sender];
}

@end
