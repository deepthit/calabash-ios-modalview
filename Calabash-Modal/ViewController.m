//
//  ViewController.m
//  Calabash-Modal
//
//  Created by Deepthi Tayi on 19/05/16.
//  Copyright © 2016 Deepthi Tayi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showModalController
{
    UIStoryboard * theStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    UIViewController * newController = [theStoryboard instantiateViewControllerWithIdentifier:@"TestModalNavigationViewController"];
    
    [self presentViewController:newController animated:YES completion:nil];
}

@end
