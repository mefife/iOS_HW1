//
//  ViewController.h
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/24/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorsViewController : UIViewController
@property NSMutableArray* customColorArray;
@property int redCalls;
@property int greenCalls;
@property int blueCalls;
@property int customCalls;
@property int randomCalls;
@property (strong, nonatomic) IBOutlet UITextField *redInputBox;
@property (strong, nonatomic) IBOutlet UITextField *greenInputBox;
@property (strong, nonatomic) IBOutlet UITextField *blueInputBox;
-(NSMutableArray*)mefPackageCount;
@end

