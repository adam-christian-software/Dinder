//
//  SimpleTableViewController.h
//  testing swiping
//
//  Created by jeremy bader on 6/26/15.
//  Copyright (c) 2015 Richard Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) IBOutlet UITableView *tableView;

@end
