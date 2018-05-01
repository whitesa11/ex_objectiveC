//
//  Pizza.m
//  Assignment8
//
//  Created by Ayako Shiraishi on 2018-04-24.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype)initWithSize:(PizzaSize) size AndToppings: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

-(NSString *)description
{
    NSString *size;
    switch (_size){
        case Large:
            size = @"Large";
            break;
        case Medium:
            size = @"Medium";
            break;
        case Small:
            size = @"Small";
            break;
        default:
            size = @"Large";
            break;
            
    }
    return[NSString stringWithFormat:@"%@ Pizza with %@, %@, %@,", size, _toppings[0], _toppings[1],_toppings[2]];
}

+ (Pizza *) largePepparoni{
    NSArray *toppings = @[@"pepparoni",@"cheese",@"tomato"];
    return [[Pizza alloc] initWithSize:Large AndToppings:toppings];
}

+ (Pizza *) meatLoversWithSize: (PizzaSize) size{
    NSArray *toppongs = @[@"beef",@"chichen",@"tomato"];
    return [[Pizza alloc] initWithSize:size AndToppings:toppongs];
}

+ (PizzaSize) getPizzaSize: (NSString *) size{
    NSString *lowered= [size lowercaseString];
    if([lowered isEqualToString:@"large"]){
        return Large;
    }else if([lowered isEqualToString:@"Medium"]){
        return Medium;
    }else{
        return Small;
    }
}
@end
