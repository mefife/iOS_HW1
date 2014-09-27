//
//  AppDelegate.m
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/24/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "AppDelegate.h"
#import "ColorsViewController.h"
#import "DataViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    self.colorsViewController = [[ColorsViewController alloc] init];
    self.dataViewController = [[DataViewController alloc] init];
    // set tags to figure out which view controller was selected
    
    
    //ColorsViewController *colorsViewController = [[ColorsViewController alloc] init];
    //DataViewController *dataViewController = [[DataViewController alloc] init];
    [tabBarController setViewControllers:@[self.colorsViewController, self.dataViewController] animated:YES];
    self.window.rootViewController = tabBarController;
    tabBarController.delegate = self;
    
    NSLog(@"Application changed");
    [self.window makeKeyAndVisible];
    
    return YES;
}


-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if (tabBarController.selectedIndex == 0 && self.dataViewController.mefReset == YES) {
        self.colorsViewController.redCalls = 0;
        self.colorsViewController.greenCalls = 0;
        self.colorsViewController.blueCalls = 0;
        self.colorsViewController.customCalls = 0;
        self.colorsViewController.randomCalls = 0;
        self.dataViewController.mefReset = NO;
        
    }else if (tabBarController.selectedIndex == 1) {
        // Update Counts on data tab
        self.dataViewController.redLabel.text = [NSString stringWithFormat:@"%d", self.colorsViewController.redCalls];
        self.dataViewController.greenLabel.text = [NSString stringWithFormat:@"%d", self.colorsViewController.greenCalls];
        self.dataViewController.blueLabel.text = [NSString stringWithFormat:@"%d", self.colorsViewController.blueCalls];
        self.dataViewController.customLabel.text = [NSString stringWithFormat:@"%d", self.colorsViewController.customCalls];
        self.dataViewController.randomLabel.text = [NSString stringWithFormat:@"%d", self.colorsViewController.randomCalls];
              }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
