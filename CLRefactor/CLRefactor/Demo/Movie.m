//
//  Movie.m
//  CLRefactor
//
//  Created by Clarence on 2018/7/2.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import "Movie.h"
#import "ChildrensPrice.h"
#import "NewReleasePrice.h"
#import "RegularPrice.h"

@interface Movie ()

@property (copy, nonatomic) NSString *title;
@property (strong, nonatomic) Price *price;

@end

@implementation Movie

- (instancetype)initWithTitle:(NSString *)title priceCode:(MoviePriceCode)priceCode
{
    self = [super init];
    if (self) {
        _title = title;
        [self setUpPriceCode:priceCode];
    }
    return self;
}

- (MoviePriceCode)getPriceCode{
    return _price.getPriceCode;
}

- (void)setUpPriceCode:(MoviePriceCode)priceCode{
    switch (priceCode) {
        case MoviePriceCodeRegular:
            _price = [[RegularPrice alloc] init];
            break;
        case MoviePriceCodeChildrens:
            _price = [[ChildrensPrice alloc] init];
            break;
        case MoviePriceCodeNewRelease:
            _price = [[NewReleasePrice alloc] init];
            break;
        default:
            NSLog(@"unspport price code ");
            abort();
            break;
    }
}

- (NSString *)getTitle{
    return _title;
}

- (float)getCharge:(NSInteger)daysRented{
    return [_price getCharge:daysRented];
}

- (NSInteger)getFrenquentRenterPoints:(NSInteger)daysRented{
    if (self.getPriceCode == MoviePriceCodeChildrens && daysRented > 1) {
        return 2;
    }else{
        return 1;
    }
}
@end
