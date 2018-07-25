//
//  RegularPrice.m
//  CLRefactor
//
//  Created by Clarence on 2018/7/25.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import "RegularPrice.h"

@implementation RegularPrice
- (MoviePriceCode)getPriceCode{
    return MoviePriceCodeRegular;
}

- (float)getCharge:(NSInteger)daysRented{
      return daysRented * 3;
}
@end
