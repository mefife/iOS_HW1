//
//  DataViewController.m
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "DataViewController.h"
#import "ColorsViewController.h"

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

}

- (IBAction)resetValueLabels:(id)sender {
    ////
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
