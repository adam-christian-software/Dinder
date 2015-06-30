//
//  RestaurantViewController.h
//  testing swiping
//
//  Created by jeremy bader on 6/28/15.
//  Copyright (c) 2015 Richard Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestaurantViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *restaurantLabel;
@property (nonatomic, strong) NSString *restaurantTitle;
@property (nonatomic, strong) IBOutlet UIImageView *restaurantPicture;
@property (nonatomic, strong) NSString *restaurantName;

@end
