//
//  Pizza.h
//  Assignment8
//
//  Created by Ayako Shiraishi on 2018-04-24.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum : NSUInteger{
    Small,
    Medium,
    Large,
}PizzaSize;

@interface Pizza : NSObject
@property (nonatomic, strong) NSArray *toppings;
@property (nonatomic, assign) PizzaSize size;

- (instancetype)initWithSize:(PizzaSize) size AndToppings: (NSArray *) toppings;
+ (Pizza *) largePepparoni;
+ (Pizza *) meatLoversWithSize: (PizzaSize) size;
+ (PizzaSize) getPizzaSize: (NSString *) size;
@end
