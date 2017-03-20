# 题目

#### 有17个人围成一圈，从0号的人开始报数，凡报到3的倍数的人离开圈子，然后再数下去。直到最后只剩下一个人为止。问此人原来的位置是多少号。

```objc
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
```
### 调用
```swift
NSArray *digits = @[@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", @"16"];
    self.modNumber = 3;
    self.length = 0;
    NSArray *array = [self ll_digitModThreeWithDightArray:digits modelNumber:self.modNumber];
    NSLog(@"最后一个数字是：%@",[array lastObject]);
```
### 好记性不如烂笔头
