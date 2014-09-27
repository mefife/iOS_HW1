//
//  DataViewController.m
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "DataViewController.h"
#import "ColorsViewController.h"
#import "AppDelegate.h"

@interface DataViewController ()

@end

@implementation DataViewController


- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.tabBarItem.title = @"Data";
        self.tabBarItem.image = [UIImage imageNamed:@"data.png"];
    }
    return self;
    
}


- (void)viewDidLoad {
    self.redLabel.text = [NSString stringWithFormat:@"%d", self.redCalls];
    self.greenLabel.text = [NSString stringWithFormat:@"%d", self.greenCalls];
    self.blueLabel.text = [NSString stringWithFormat:@"%d", self.blueCalls];
    self.customLabel.text = [NSString stringWithFormat:@"%d", self.customCalls];
    self.randomLabel.text = [NSString stringWithFormat:@"%d", self.randomCalls];
    //NSLog(@"Data view did load");
    self.mefReset = NO;

}

- (IBAction)resetValueLabels:(id)sender {
    self.redLabel.text = @"0";
    self.greenLabel.text = @"0";
    self.blueLabel.text = @"0";
    self.customLabel.text = @"0";
    self.randomLabel.text = @"0";
    // Need to reset overall count now and done!!!
    self.mefReset = YES;
}

-(void)mefSetLabelValues:(NSMutableArray *)timesSelectedColors
{
    self.redLabel.text = [NSString stringWithFormat:@"%@",[timesSelectedColors objectAtIndex:0]];
    self.greenLabel.text = [NSString stringWithFormat:@"%@",[timesSelectedColors objectAtIndex:1]];
    self.blueLabel.text = [NSString stringWithFormat:@"%@",[timesSelectedColors objectAtIndex:2]];
    self.customLabel.text = [NSString stringWithFormat:@"%@",[timesSelectedColors objectAtIndex:3]];
    self.randomLabel.text = [NSString stringWithFormat:@"%@",[timesSelectedColors objectAtIndex:4]];
}


@end
