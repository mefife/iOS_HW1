//
//  ViewController.m
//  UW_HW1_mefife
//
//  Created by Matthew Fife on 9/24/14.
//  Copyright (c) 2014 Matthew Fife. All rights reserved.
//

#import "ColorsViewController.h"
#import "GreenViewController.h"
#import "RedViewController.h"
#import "BlueViewController.h"
#import "CustomViewController.h"
#import "RandomViewController.h"

@interface ColorsViewController () <UITextFieldDelegate>

@end

@implementation ColorsViewController


- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.tabBarItem.title = @"Colors";
        self.tabBarItem.image = [UIImage imageNamed:@"colors.png"];
    }
    return self;
    
}



-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField.tag == (int)1) {
        if ([textField.text doubleValue] >= 1) {
            [self.customColorArray replaceObjectAtIndex:0 withObject:@1];
        } else {
           [self.customColorArray replaceObjectAtIndex:0 withObject:@0];
        }
        NSLog(@"%@", @"red");
    } else if (textField.tag == (int)2){
        if ([textField.text doubleValue] >= 1) {
            [self.customColorArray replaceObjectAtIndex:2 withObject:@1];
        } else {
            [self.customColorArray replaceObjectAtIndex:2 withObject:@0];
        }
        NSLog(@"%@", @"blue");
    } else if (textField.tag == (int)3){
        if ([textField.text doubleValue] >= 1) {
            [self.customColorArray replaceObjectAtIndex:1 withObject:@1];
        } else {
            [self.customColorArray replaceObjectAtIndex:1 withObject:@0];
        }
        NSLog(@"%@", @"green");
    }
}


-(NSMutableArray*)mefPackageCount
{
    NSMutableArray* arrayToPass = [NSMutableArray new];
    [arrayToPass addObject:[NSNumber numberWithInteger:self.redCalls]];
    [arrayToPass addObject:[NSNumber numberWithInteger:self.greenCalls]];
    [arrayToPass addObject:[NSNumber numberWithInteger:self.blueCalls]];
    [arrayToPass addObject:[NSNumber numberWithInteger:self.randomCalls]];
    [arrayToPass addObject:[NSNumber numberWithInteger:self.customCalls]];
    return arrayToPass;
}



- (IBAction)goGreenView:(id)sender {
    self.greenCalls++;
    GreenViewController *gvc = [[GreenViewController alloc] init];
    // Set presented String Value
    gvc.viewCalls = self.greenCalls;
    //[gvc setLabel:self.greenCalls];
    [self presentViewController:gvc animated:YES completion:nil];
}


- (IBAction)goRedView:(id)sender {
    self.redCalls++;
    RedViewController *rvc = [[RedViewController alloc] init];
    // Set presented String Value
    rvc.viewCalls = self.redCalls;
    //[rvc setLabel:self.redCalls];
    [self presentViewController:rvc animated:YES completion:nil];
}

- (IBAction)goBlueView:(id)sender {
    self.blueCalls++;
    BlueViewController *bvc = [[ BlueViewController alloc] init];
    // Set presented String Value
    bvc.viewCalls = self.blueCalls;
    //[bvc setLabel:self.blueCalls];
    [self presentViewController:bvc animated:YES completion:nil];
}

- (IBAction)goCustomView:(id)sender {
    self.customCalls++;
    CustomViewController *cvc = [[CustomViewController alloc] init];
    // Need to set the color properties on the CustomView Controller
    [cvc setColorArray:self.customColorArray];
    // Set presented String Value
    [cvc setLabel:self.customCalls];
    // Present the View Controller
    [self presentViewController:cvc animated:YES completion:nil];
    
}
- (IBAction)goRandomView:(id)sender {
    self.randomCalls++;
    RandomViewController *ranvc = [[RandomViewController alloc] init];
    // Set presented String Value
    ranvc.viewCalls = self.randomCalls;
    //[ranvc setLabel:self.randomCalls];
    [self presentViewController:ranvc animated:YES completion:nil];
}

- (void)viewDidLoad {
    self.redInputBox.tag = (int)1;
    self.blueInputBox.tag = (int)2;
    self.greenInputBox.tag = (int)3;
    self.customColorArray = [[NSMutableArray alloc] initWithArray:@[@0, @0, @0]];
    self.redCalls = 0;
    self.greenCalls = 0;
    self.blueCalls = 0;
    self.customCalls = 0;
    self.randomCalls = 0;
    }




@end
