//
//  ViewController.m
//  CLRefactor
//
//  Created by Clarence on 2018/7/2.
//  Copyright © 2018年 Clarence. All rights reserved.
//

#import "ViewController.h"
#import "Customer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Customer *oneCustomer = [[Customer alloc] initWithName:@"iOSer"];
    
    Movie *childMovie = [[Movie alloc] initWithTitle:@"Children Movie" priceCode:MoviePriceCodeChildrens];
    Rental *childRental = [[Rental alloc] initWithMovie:childMovie daysRented:2];
    [oneCustomer addRental:childRental];
    
    Movie *regularMoview = [[Movie alloc] initWithTitle:@"Regular Movie" priceCode:MoviePriceCodeRegular];
    Rental *regularRental = [[Rental alloc] initWithMovie:regularMoview daysRented:3];
    [oneCustomer addRental:regularRental];
    
    Movie *newMovie = [[Movie alloc] initWithTitle:@"New Release Movie" priceCode:MoviePriceCodeNewRelease];
    Rental *newRental = [[Rental alloc] initWithMovie:newMovie daysRented:4];
    [oneCustomer addRental:newRental];
    
    NSLog(@"statement:\n%@", [oneCustomer statement]);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
