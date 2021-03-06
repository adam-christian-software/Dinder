//
//  FromRightSegue.m
//  testing swiping
//
//  Created by jeremy bader on 5/25/15.
//  Copyright (c) 2015 Richard Kim. All rights reserved.
//

#import "FromRightSegue.h"
#import "QuartzCore/QuartzCore.h"

@implementation FromRightSegue

-(void)perform {
    
    UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    UIViewController *destinationController = (UIViewController*)[self destinationViewController];
    
    CATransition* transition = [CATransition animation];
    transition.duration = .25;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    
    NSString *title = sourceViewController.title;
    NSString *title2 = destinationController.title;
    NSLog(@"Perform Right Segue transtition from '%@' to '%@'", title, title2);
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                                forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
}

@end
