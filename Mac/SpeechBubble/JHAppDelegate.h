//
//  JHAppDelegate.h
//  SpeechBubble
//
//  Created by Jeff Hodnett on 5/31/13.
//
//

#import <Cocoa/Cocoa.h>

@class JHBubbleViewController;

@interface JHAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet JHBubbleViewController *viewController;

@end
