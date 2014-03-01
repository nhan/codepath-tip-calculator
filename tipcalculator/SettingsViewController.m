//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Nhan Nguyen on 3/1/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int tipIndex = [defaults integerForKey:@"tip_calculator_default_tip_index"];
    self.defaultTipControl.selectedSegmentIndex = tipIndex;
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)defaultTipChanged:(id)sender {
    int tipIndex = self.defaultTipControl.selectedSegmentIndex;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:tipIndex forKey:@"tip_calculator_default_tip_index"];
    [defaults synchronize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
