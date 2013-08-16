//
//  DAPLoginViewController.h
//  PrivateDancer
//
//  Created by De Haven Prillerman on 8/16/13.
//  Copyright (c) 2013 De Haven Prillerman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DAPLoginViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *userTextField;
@property (nonatomic, strong) IBOutlet UITextField *passwordTextField;
- (IBAction)logInPressed:(id)sender;

@end

