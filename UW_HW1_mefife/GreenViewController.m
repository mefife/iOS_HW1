//
//  GreenViewController.m
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "GreenViewController.h"

@interface GreenViewController ()

@end

@implementation GreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
}

- (IBAction)goBackHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setLabel:(int)times;
{
    self.presentedLabel.text = [NSString stringWithFormat:@"Presented %d times",times];
}

@end
