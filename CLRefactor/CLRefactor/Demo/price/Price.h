//
//  Price.h
//  CLRefactor
//
//  Created by Clarence on 2018/7/25.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoConstant.h"
@interface Price : NSObject
- (MoviePriceCode)getPriceCode;
- (float)getCharge:(NSInteger)daysRented;
@end
