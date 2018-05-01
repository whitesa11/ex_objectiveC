//
//  Kitchen.h
//  Assignment8
//
//  Created by Ayako Shiraishi on 2018-04-24.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface Kitchen : NSObject
- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
@end
