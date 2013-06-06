//
//  JHBubbleViewController.h
//  SpeechBubble
//
//  Created by Jeff Hodnett on 6/2/13.
//
//

#import <Cocoa/Cocoa.h>

@class JHSpeechBubbleView;

@interface JHBubbleViewController : NSViewController

// Outlets
@property (assign) IBOutlet JHSpeechBubbleView *speechBubbleView;
@property (assign) IBOutlet NSTextField *bubbleTextField;
@property (assign) IBOutlet NSColorWell *bubbleBackgroundColorWell;
@property (assign) IBOutlet NSColorWell *bubbleBorderColorWell;
@property (assign) IBOutlet NSColorWell *bubbleTextColorWell;

// Actions
- (IBAction)changeBorderType:(id)sender;
- (IBAction)changeArrowPosition:(id)sender;
- (IBAction)changeBackgroundColor:(id)sender;
- (IBAction)changeBorderColor:(id)sender;
- (IBAction)changeTextColor:(id)sender;
- (IBAction)changeTextFont:(id)sender;

@end
