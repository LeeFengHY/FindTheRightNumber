//
//  FirstViewController.m
//  FindTheRightNumber
//
//  Created by QFWangLP on 2017/3/20.
//  Copyright © 2017年 LeeFengHY. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (nonatomic, assign) int length;
@property (nonatomic, assign) int modNumber;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *digits = @[@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", @"16"];
    self.modNumber = 3;
    self.length = 0;
    NSArray *array = [self ll_digitModThreeWithDightArray:digits modelNumber:self.modNumber];
    NSLog(@"最后一个数字是：%@",[array lastObject]);
}

- (NSArray *)ll_digitModThreeWithDightArray:(NSArray *)digits modelNumber:(NSInteger)modNumber
{
    NSMutableArray *result = [NSMutableArray new];
    [result addObjectsFromArray:digits];
    for (NSInteger i = 0; i < digits.count; i++) {
        self.length++;
        NSInteger modThreeNumer = self.length % modNumber;
        if (modThreeNumer == 0) {
            NSLog(@"出去的人号数是：%@",digits[i]);
            [result removeObject:digits[i]];
            if (result.count == 1) {
                break;
            }
        }
    }
    if (result.count != 1) {
        return [self ll_digitModThreeWithDightArray:result modelNumber:modNumber];
    }
    return result;
}

@end
