//
//  ModalNavigationViewController.m
//  Calabash-Modal
//
//  Created by Deepthi Tayi on 19/05/16.
//  Copyright © 2016 Deepthi Tayi. All rights reserved.
//

#import "ModalNavigationViewController.h"

@implementation ModalNavigationViewController

- (UIStatusBarStyle)preferredStatusBarStyle
{
    if (self.readyToDismiss == YES)
        return UIStatusBarStyleDefault;
    
    return UIStatusBarStyleLightContent;
}

@end
