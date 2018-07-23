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
@end
