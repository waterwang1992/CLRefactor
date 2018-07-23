//
//  Movie.h
//  CLRefactor
//
//  Created by Clarence on 2018/7/2.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MoviePriceCode) {
    MoviePriceCodeChildrens = 2,
    MoviePriceCodeRegular = 0,
    MoviePriceCodeNewRelease = 1
};

@interface Movie : NSObject

- (instancetype)initWithTitle:(NSString *)title priceCode:(MoviePriceCode)priceCode;

- (MoviePriceCode)getPriceCode;

- (void)setUpPriceCode:(MoviePriceCode)priceCode;

- (NSString *)getTitle;

@end
