//
//  DAPFirstViewController.m
//  PrivateDancer
//
//  Created by De Haven Prillerman on 8/5/13.
//  Copyright (c) 2013 De Haven Prillerman. All rights reserved.
//

#import "DAPFirstViewController.h"

@interface DAPFirstViewController () <UITextFieldDelegate>

@property (nonatomic, weak)IBOutlet UIToolbar *toolbar;
@property(nonatomic, weak)IBOutlet UITextField *textField;

-(IBAction)shareButtonTapped:(id)sender;

@end

@implementation DAPFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)shareButtonTapped:(id)sender{
        //TODO


}

@end
