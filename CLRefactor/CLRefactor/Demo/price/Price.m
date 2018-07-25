//
//  Price.m
//  CLRefactor
//
//  Created by Clarence on 2018/7/25.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import "Price.h"

@implementation Price
- (MoviePriceCode)getPriceCode{
    NSLog(@"this method should be overriden by subclass");
    abort();
    return MoviePriceCodeUnknown;
}

- (float)getCharge:(NSInteger)daysRented{
    NSLog(@"this method should be overriden by subclass");
    abort();
    return 0;
}
@end
