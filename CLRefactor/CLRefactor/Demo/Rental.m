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
@end
