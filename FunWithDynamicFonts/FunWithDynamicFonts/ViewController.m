//
//  ViewController.m
//  FunWithDynamicFonts
//
//  Created by Dulio Denis on 3/14/14.
//  Copyright (c) 2014 Dulio Denis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *mainTextView;
- (void)preferredContentSizeChanged:(NSNotification *)aNotification;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(preferredContentSizeChanged:) name:UIContentSizeCategoryDidChangeNotification object:nil];
}

- (void)preferredContentSizeChanged:(NSNotification *)aNotification {
    NSLog(@"User wants the Font to change");
    self.mainTextView.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
