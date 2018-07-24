//
//  Movie.m
//  CLRefactor
//
//  Created by Clarence on 2018/7/2.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import "Movie.h"

@interface Movie ()

@property (copy, nonatomic) NSString *title;
@property (assign, nonatomic) MoviePriceCode priceCode;

@end

@implementation Movie

- (instancetype)initWithTitle:(NSString *)title priceCode:(MoviePriceCode)priceCode
{
    self = [super init];
    if (self) {
        _title = title;
        _priceCode = priceCode;
    }
    return self;
}

- (MoviePriceCode)getPriceCode{
    return _priceCode;
}

- (void)setUpPriceCode:(MoviePriceCode)priceCode{
    _priceCode = priceCode;
}

- (NSString *)getTitle{
    return _title;
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

- (NSInteger)getFrenquentRenterPoints:(NSInteger)daysRented{
    if (self.getPriceCode == MoviePriceCodeChildrens && daysRented > 1) {
        return 2;
    }else{
        return 1;
    }
}
@end
