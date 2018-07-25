//
//  Movie.h
//  CLRefactor
//
//  Created by Clarence on 2018/7/2.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoConstant.h"

@interface Movie : NSObject

- (instancetype)initWithTitle:(NSString *)title priceCode:(MoviePriceCode)priceCode;

- (MoviePriceCode)getPriceCode;

- (void)setUpPriceCode:(MoviePriceCode)priceCode;

- (NSString *)getTitle;

- (float)getCharge:(NSInteger)daysRented;

- (NSInteger)getFrenquentRenterPoints:(NSInteger)daysRented;

@end
