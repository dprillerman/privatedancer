//
//  DAPLoginViewController.m
//  PrivateDancer
//
//  Created by De Haven Prillerman on 8/16/13.
//  Copyright (c) 2013 De Haven Prillerman. All rights reserved.
//

#import "DAPLoginViewController.h"
//#import "RegisterViewController.h"
#import <Parse/Parse.h>

@interface DAPLoginViewController ()

@end

@implementation DAPLoginViewController

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
    // Release any retained subviews of the main view.
    self.userTextField = nil;
    self.passwordTextField = nil;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark IB Actions
- (IBAction)logInPressed:(id)sender {
    [PFUser logInWithUsernameInBackground:self.userTextField.text password:self.passwordTextField.text block:^(PFUser *user, NSError *error) {
        if (user) {
            //Open the wall
            // PFGeoPoint *point = [PFGeoPoint geoPointWithLatitude:40.0 longitude:-30.0];
            //[user setObject:point forKey:@"location"];
            [self performSegueWithIdentifier:@"LoginSuccessful" sender:self];
        } else {
            //Something bad has ocurred
            NSString *errorString = [[error userInfo] objectForKey:@"error"];
            UIAlertView *errorAlertView = [[UIAlertView alloc] initWithTitle:@"Error" message:errorString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            [errorAlertView show];
        }
    }];
}

@end
