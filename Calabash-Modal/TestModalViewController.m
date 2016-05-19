//
//  TestModalViewController.m
//  Calabash-Modal
//
//  Created by Deepthi Tayi on 19/05/16.
//  Copyright © 2016 Deepthi Tayi. All rights reserved.
//

#import "TestModalViewController.h"
#import "AppDelegate.h"

@interface TestModalViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UIView *viewTextField1;
@property (weak, nonatomic) IBOutlet UIView *viewTextField2;
@property (weak, nonatomic) IBOutlet UIButton *updateButton;
@property (weak, nonatomic) IBOutlet UIView *controlsView;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *controlsViewTopConstraint;

@property (assign, nonatomic) BOOL moveUp;

@end

@implementation TestModalViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.viewTextField1.layer.cornerRadius = 2.0f;
    self.viewTextField2.layer.cornerRadius = 2.0f;
    
    [self loadUpdateButton];
    
    // any defaults to set
    self.title = @"Modal";
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]];

    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma ===
#pragma mark === Private methods

- (void)loadUpdateButton
{
    self.updateButton.layer.cornerRadius = 3.0f;
    self.updateButton.layer.borderWidth = 0.0f;
    self.updateButton.clipsToBounds = YES;
    self.updateButton.layer.borderColor = [UIColor darkGrayColor].CGColor;
    self.updateButton.layer.backgroundColor = [UIColor darkGrayColor].CGColor;
}

#pragma ===
#pragma mark === Action methods

- (void)touchesEnded:(NSSet *)touches
           withEvent:(UIEvent *)event
{
    [self.textField1 resignFirstResponder];
    [self.textField2 resignFirstResponder];
}

- (IBAction)update:(id)sender
{
    [self.textField1 resignFirstResponder];
    [self.textField2 resignFirstResponder];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)close:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma ===
#pragma mark === UITextFieldDelegate methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.textField1)
    {
        [self.textField2 becomeFirstResponder];
        return NO;
    }
    else if (textField == self.textField2)
    {
        [self update:textField];
        return NO;
    }
    return YES;
}

@end
