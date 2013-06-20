//
//  JHBubbleViewController.m
//  SpeechBubble
//
//  Created by Jeff Hodnett on 6/2/13.
//
//

#import "JHBubbleViewController.h"
#import "JHSpeechBubbleView.h"

@interface JHBubbleViewController ()

@end

@implementation JHBubbleViewController

@synthesize speechBubbleView=_speechBubbleView;
@synthesize bubbleTextField=_bubbleTextField;
@synthesize bubbleBackgroundColorWell=_bubbleBackgroundColorWell;
@synthesize bubbleBorderColorWell=_bubbleBorderColorWell;
@synthesize bubbleTextColorWell=_bubbleTextColorWell;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(void)awakeFromNib
{
    // Setup the view
    [self setupView];
}

-(void)setupView
{
    // Setup colors
    NSColor *fillColor = [NSColor whiteColor];
    NSColor *strokeColor = [NSColor blackColor];
    [self.bubbleBackgroundColorWell setColor:fillColor];
    [self.speechBubbleView setBubbleFillColor:fillColor];
    [self.bubbleBorderColorWell setColor:strokeColor];
    [self.speechBubbleView setBubbleStrokeColor:strokeColor];
    
    // Setup text
    NSString *defaultText = @"KABOOM!!";
    NSColor *textColor = [NSColor blackColor];
    [self.speechBubbleView setBubbleText:defaultText];
    [self.bubbleTextField setStringValue:defaultText];
    [self.bubbleTextColorWell setColor:textColor];
    [self.speechBubbleView setTextColor:textColor];
}

#pragma mark - Actions
- (IBAction)changeBorderType:(id)sender
{
    NSPopUpButton *btn = (NSPopUpButton *)sender;
    NSMenuItem *item = [btn selectedItem];
    JHSpeechBubbleType type = (JHSpeechBubbleType)[item tag];
    [self.speechBubbleView setBubbleType:type];
}

- (IBAction)changeArrowPosition:(id)sender
{
    NSPopUpButton *btn = (NSPopUpButton *)sender;
    NSMenuItem *item = [btn selectedItem];
    JHSpeechBubblePointerPosition position = (JHSpeechBubblePointerPosition)[item tag];
    [self.speechBubbleView setPointerPosition:position];
}

- (IBAction)changeBackgroundColor:(id)sender
{
    [self.speechBubbleView setBubbleFillColor:[sender color]];
}

- (IBAction)changeBorderColor:(id)sender
{
    [self.speechBubbleView setBubbleStrokeColor:[sender color]];
}

- (IBAction)changeTextColor:(id)sender
{
    [self.speechBubbleView setBubbleTextColor:[sender color]];
}

- (IBAction)changeTextFont:(id)sender
{
    NSPopUpButton *btn = (NSPopUpButton *)sender;
    NSMenuItem *item = [btn selectedItem];
    [self.speechBubbleView setBubbleFontName:[item title]];
}

#pragma mark - NSTextField Delegate
-(void)controlTextDidChange:(NSNotification *)notification
{
    // Get the text field and update the text
    NSTextField *textField = [notification object];
    NSString *bubbleText = [textField stringValue];
    [self.speechBubbleView setBubbleText:bubbleText];
}

@end
