//
//  Customer.h
//  CLRefactor
//
//  Created by Clarence on 2018/7/2.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rental.h"

@interface Customer : NSObject
- (instancetype)initWithName:(NSString *)name;

- (void)addRental:(Rental *)rental;

- (NSString *)getName;

- (NSString *)statement;
@end
