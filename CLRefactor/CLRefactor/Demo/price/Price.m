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
    NSLog(@"this method should never be called by Price class");
    abort();
    return MoviePriceCodeUnknown;
}
@end
