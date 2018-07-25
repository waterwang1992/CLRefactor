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

- (float)getCharge:(NSInteger)daysRented{
    float result = 0.0f;
    switch (self.getPriceCode) {
        case MoviePriceCodeChildrens:
        {
            result += 2;
            if (daysRented > 2) {
                result += (daysRented - 2) * 1.5;
            }
        }
            break;
        case MoviePriceCodeRegular:{
            result += daysRented * 3;
        }
            break;
        case MoviePriceCodeNewRelease:{
            result += 1.5;
            if (daysRented > 3) {
                result += (daysRented - 3) * 1.5;
            }
        }
            break;
        default:
            break;
    }
    return result;
}
@end
