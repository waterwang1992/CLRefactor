//
//  Rental.h
//  CLRefactor
//
//  Created by Clarence on 2018/7/2.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

@interface Rental : NSObject

- (instancetype)initWithMovie:(Movie *)movie daysRented:(NSInteger)daysRented;

- (NSInteger)getDaysRented;

- (Movie *)getMovie;
@end
