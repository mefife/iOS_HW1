//
//  GreenViewController.h
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/25/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GreenViewController : UIViewController
-(void)setLabel:(int)times;
@property (strong, nonatomic) IBOutlet UILabel *presentedLabel;
@end
