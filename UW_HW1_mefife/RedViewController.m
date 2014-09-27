//
//  RedViewController.m
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "RedViewController.h"
#import "ColorsViewController.h"

@interface RedViewController ()

@end

@implementation RedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.presentedLabel.text = [NSString stringWithFormat:@"Presented %d times", self.viewCalls];
}

- (IBAction)goBackHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setLabel:(int)times;
{
    NSLog(@"Get in here Red");
    NSLog(@"The presented text label is: %@",self.presentedLabel.text);
    //self.presentedLabel.text = [NSString stringWithFormat:@"Presented %d times", times];
}


@end
