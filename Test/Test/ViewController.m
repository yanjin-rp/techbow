//
//  ViewController.m
//  Test
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
    NSString *str = [NSString stringWithFormat:@"hello"];
    printf("%s", [[self reverseString:str] UTF8String]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)reverseString:(NSString *)string {
    NSUInteger len = string.length;
    unichar *data = malloc(sizeof(unichar) * len);
    for (int i = 0; i < len; i++) {
        data[i] = [string characterAtIndex:len - 1 - i];
    }
    NSString *reversedString = [NSString stringWithCharacters:data length:len];
    return reversedString;
}

@end
