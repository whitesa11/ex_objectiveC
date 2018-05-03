//
//  AnchovyManager.m
//  Assignment11
//
//  Created by Ayako Shiraishi on 2018-05-02.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "AnchovyManager.h"

@implementation AnchovyManager
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    for(int i = 0; i < toppings.count; i++) {
        if([[toppings objectAtIndex:i] isEqualToString:@"Anchovy"]){
            return NO;
        }
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    
}
@end
