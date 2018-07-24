//
//  Customer.m
//  CLRefactor
//
//  Created by Clarence on 2018/7/2.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import "Customer.h"

@interface Customer ()

@property (copy, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray <Rental *>*rentals;

@end

@implementation Customer

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)addRental:(Rental *)rental{
    if (rental == nil) {
        return;
    }
    if (_rentals == nil) {
        _rentals = [NSMutableArray arrayWithCapacity:0];
    }
    [_rentals addObject:rental];
}

- (NSString *)getName{
    return _name;
}

- (NSString *)statement{
    float totalAmount = 0;
    int frequentRenterPoints = 0;
    NSString *result = [NSString stringWithFormat:@"Renter Record For %@ \n", _name];
    for (Rental *each in _rentals) {
        frequentRenterPoints ++;
        if (each.getMovie.getPriceCode == MoviePriceCodeChildrens && each.getDaysRented > 1) {
            frequentRenterPoints ++;
        }
        totalAmount += each.getCharge;
        result = [result stringByAppendingFormat:@"\t%@\t%.2f\n", each.getMovie.getTitle, each.getCharge];
    }
    
    result = [result stringByAppendingFormat:@"Amount own is %.2f \n", totalAmount];
    result = [result stringByAppendingFormat:@"You earned %d frequent renter points", frequentRenterPoints];
    
    return result;
}

@end
