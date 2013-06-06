//
//  JHViewController.h
//  SpeechBubble
//
//  Created by Jeff Hodnett on 6/6/13.
//  Copyright (c) 2013 Jeff Hodnett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JHSpeechBubbleView.h"

@interface JHViewController : UIViewController

@property(nonatomic, retain) IBOutlet JHSpeechBubbleView *bubbleView;

- (IBAction)arrowPositionSelected:(id)sender;

@end
