//
//  Rental.m
//  CLRefactor
//
//  Created by Clarence on 2018/7/2.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import "Rental.h"
#import "Movie.h"

@interface Rental ()
@property (strong, nonatomic) Movie *movie;
@property (assign, nonatomic) NSInteger daysRented;
@end

@implementation Rental

- (instancetype)initWithMovie:(Movie *)movie daysRented:(NSInteger)daysRented
{
    self = [super init];
    if (self) {
        _movie = movie;
        _daysRented = daysRented;
    }
    return self;
}

- (NSInteger)getDaysRented{
    return _daysRented;
}

- (Movie *)getMovie{
    return _movie;
}

- (float)getCharge{
    float result = 0.0f;
    switch (self.getMovie.getPriceCode) {
            case MoviePriceCodeChildrens:
        {
            result += 2;
            if (self.getDaysRented > 2) {
                result += (self.getDaysRented - 2) * 1.5;
            }
        }
            break;
            case MoviePriceCodeRegular:{
                result += self.getDaysRented * 3;
            }
            break;
            case MoviePriceCodeNewRelease:{
                result += 1.5;
                if (self.getDaysRented > 3) {
                    result += (self.getDaysRented - 3) * 1.5;
                }
            }
            break;
        default:
            break;
    }
    return result;
}

- (NSInteger)getFrequentRenterPoints{
    if (self.getMovie.getPriceCode == MoviePriceCodeChildrens && self.getDaysRented > 1) {
        return 2;
    }else{
        return 1;
    }
}
@end
