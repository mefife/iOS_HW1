//
//  CustomViewController.m
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "CustomViewController.h"
#import "ColorsViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    //[super viewDidLoad];
    // Get information about custom view values entered
    //ColorsViewController *colorsPallet = [ColorsViewController getColors];
    
    
    
}
- (IBAction)goBackHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setColorArray:(NSMutableArray*)array;
{
    NSNumber * valueForRed = [array objectAtIndex:0];
    NSNumber * valueForGreen = [array objectAtIndex:1];
    NSNumber * valueforBlue = [array objectAtIndex:2];
    self.view.backgroundColor  = [UIColor colorWithRed:[valueForRed floatValue] green:[valueForGreen floatValue] blue:[valueforBlue floatValue] alpha:1];
}

-(void)setLabel:(int)times;
{
    self.presentedLabel.text = [NSString stringWithFormat:@"Presented %d times",times];
}

@end
