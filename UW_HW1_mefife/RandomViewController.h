//
//  RandomViewController.h
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandomViewController : UIViewController
-(void)setLabel:(int)times;
@property (strong, nonatomic) IBOutlet UILabel *presentedLabel;
@property int viewCalls;
@end
