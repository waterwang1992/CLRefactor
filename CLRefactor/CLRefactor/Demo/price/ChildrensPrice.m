//
//  ChildrensPrice.m
//  CLRefactor
//
//  Created by Clarence on 2018/7/25.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import "ChildrensPrice.h"

@implementation ChildrensPrice
- (MoviePriceCode)getPriceCode{
    return MoviePriceCodeChildrens;
}

- (float)getCharge:(NSInteger)daysRented{
   float result = 2;
    if (daysRented > 2) {
        result += (daysRented - 2) * 1.5;
    }
    return result;
}

- (NSInteger)getFrenquentRenterPoints:(NSInteger)daysRented{
    return daysRented > 1 ? 2 : 1;
}
@end
