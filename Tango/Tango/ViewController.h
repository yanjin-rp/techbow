//
//  ViewController.h
//  Tango
//
//  Created by Yan Jin on 3/3/15.
//  Copyright (c) 2015 Yan Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

