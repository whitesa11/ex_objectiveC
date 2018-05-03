//
//  Kitchen.m
//  Assignment8
//
//  Created by Ayako Shiraishi on 2018-04-24.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "Kitchen.h"


@implementation Kitchen
- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    if(self.delegate && [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings])
    {
        if([self.delegate kitchenShouldUpgradeOrder:self])
        {
            if([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)])
            {
                [self.delegate kitchenDidMakePizza:[[Pizza alloc] initWithSize:Large AndToppings:toppings]];
                return [[Pizza alloc] initWithSize: Large AndToppings:toppings];
            }
        }else{
            if([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)])
            {
                [self.delegate kitchenDidMakePizza:[[Pizza alloc] initWithSize:size AndToppings:toppings]];
                return [[Pizza alloc] initWithSize: size AndToppings:toppings];
            }
        }
    }
    return nil;
    
}


@end
