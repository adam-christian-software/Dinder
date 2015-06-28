//
//  SimpleTableViewController.m
//  testing swiping
//
//  Created by jeremy bader on 6/26/15.
//  Copyright (c) 2015 Richard Kim. All rights reserved.
//

#import "SimpleTableViewController.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController
{
    NSArray *restaurantNames;
    NSArray *restaurantImages;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    restaurantNames = [NSArray arrayWithObjects:@"Uchi", @"Franklin Barbecue", @"Eddie V's Edgewater Grille", @"Whole Foods Market", @"Uchiko", @"Truluck's Seafood", @"Jack Allen's Kitchen", @"Hopdoddy", @"Turf N Surf Po' Boy", @"Moonshine - Patio Bar & Grill", @"Rudy's Country Store & Bar-B-Q", @"Torchy's Tacos", @"Prelog's", @"Fonda San Miguel", @"Home Slice Pizza", @"Pinthouse Pizza", nil];
    
    restaurantImages = [NSArray arrayWithObjects:@"Restaurant1.jpg", @"Restaurant2.jpg", @"Restaurant3.jpg", @"Restaurant4.jpg", @"Restaurant5.jpg", @"Restaurant6.jpg", @"Restaurant7.jpg", @"Restaurant8.jpg", @"Restaurant9.jpg", @"Restaurant10.jpg", @"Restaurant11.jpg", @"Restaurant12.jpg", @"Restaurant13.jpg", @"Restaurant14.jpg", @"Restaurant15.jpg", @"Restaurant16.jpg", nil];
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [restaurantNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [restaurantNames objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[restaurantImages objectAtIndex:indexPath.row]];
    UIImage *image = cell.imageView.image;
    UIImage *tempImage = nil;
    CGSize targetSize = CGSizeMake(250, 187);
    UIGraphicsBeginImageContext(targetSize);
    
    CGRect thumbnailRect = CGRectMake(0, 0, 0, 0);
    thumbnailRect.origin = CGPointMake(0.0,0.0);
    thumbnailRect.size.width  = targetSize.width;
    thumbnailRect.size.height = targetSize.height;
    
    [image drawInRect:thumbnailRect];
    
    tempImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    cell.imageView.image = tempImage;
    return cell;
}

@end
