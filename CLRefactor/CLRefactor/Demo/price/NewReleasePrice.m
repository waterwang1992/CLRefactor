//
//  NewReleasePrice.m
//  CLRefactor
//
//  Created by Clarence on 2018/7/25.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import "NewReleasePrice.h"

@implementation NewReleasePrice
- (MoviePriceCode)getPriceCode{
    return MoviePriceCodeNewRelease;
}

- (float)getCharge:(NSInteger)daysRented{
   float result = 1.5;
    if (daysRented > 3) {
        result += (daysRented - 3) * 1.5;
    }
    return result;
}
@end
