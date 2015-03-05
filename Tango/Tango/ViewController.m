//
//  ViewController.m
//  Tango
//
//  Created by Yan Jin on 3/3/15.
//  Copyright (c) 2015 Yan Jin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [[self tableView] registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 25;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
 
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    float width = self.view.frame.size.width;
    float height = self.view.frame.size.height;
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(width / 2 - 25, height / 2 - 25, 50, 50)];
    
    [viewController.view addSubview:label];
    
    label.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    label.backgroundColor = [UIColor grayColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.navigationController pushViewController:viewController animated:YES];
    
}

@end
