//
//  AppDelegate.h
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/24/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ColorsViewController;
@class DataViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate, UITabBarDelegate>
@property (strong, nonatomic) UIWindow *window;
@property ColorsViewController * colorsViewController;
@property DataViewController * dataViewController;
@end

