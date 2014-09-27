//
//  BlueViewController.m
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "BlueViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.presentedLabel.text = [NSString stringWithFormat:@"Presented %d times", self.viewCalls];
}


- (IBAction)goBackHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setLabel:(int)times;
{
    self.presentedLabel.text = [NSString stringWithFormat:@"Presented %d times",times];
}

@end
