//
//  JHViewController.m
//  SpeechBubble
//
//  Created by Jeff Hodnett on 6/6/13.
//  Copyright (c) 2013 Jeff Hodnett. All rights reserved.
//

#import "JHViewController.h"

@interface JHViewController ()

@end

@implementation JHViewController

@synthesize bubbleView=_bubbleView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    [_bubbleView release];
    
    [super dealloc];
}

#pragma mark - Actions
- (IBAction)arrowPositionSelected:(id)sender
{
    UISegmentedControl *control = (UISegmentedControl *)sender;
    JHSpeechBubblePointerPosition pos = (JHSpeechBubblePointerPosition)[control selectedSegmentIndex];
    [self.bubbleView setPointerPosition:pos];
}

@end
