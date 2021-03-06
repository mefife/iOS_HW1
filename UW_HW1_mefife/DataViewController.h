//
//  DataViewController.h
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *redLabel;
@property (strong, nonatomic) IBOutlet UILabel *greenLabel;
@property (strong, nonatomic) IBOutlet UILabel *blueLabel;
@property (strong, nonatomic) IBOutlet UILabel *customLabel;
@property (strong, nonatomic) IBOutlet UILabel *randomLabel;
-(void)mefSetLabelValues:(NSMutableArray *)timesSelectedColors;
- (IBAction)resetValueLabels:(id)sender;
@property int redCalls;
@property int greenCalls;
@property int blueCalls;
@property int customCalls;
@property int randomCalls;
@property BOOL mefReset;
@end
