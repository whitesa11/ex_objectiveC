//
//  main.m
//  Assignment8
//
//  Created by Ayako Shiraishi on 2018-04-24.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "InputHandler.h"
#import "CheeryManager.h"
#import "AnchovyManager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        AnchovyManager *anchoManager = [AnchovyManager new];
        CheeryManager *cheerManager = [CheeryManager new];
        
        while (TRUE) {
            // Loop forever
            NSString *inputString = [InputHandler getUserInput:@"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            
            // *large ham pinnapple cheese
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSInteger length = [commandWords count];
            NSString *size = commandWords[0]; //size
            NSArray *toppoings = [commandWords subarrayWithRange:NSMakeRange(1, length-1)];
            NSString *chooseManager = [InputHandler getUserInput:@"Pick a manager:\n 1. Anchovy Manager.\n 2. Cheerful Manager\n"];
            
            if([chooseManager isEqualToString:@"1"]) {
                restaurantKitchen.delegate = anchoManager;
            } else {
                restaurantKitchen.delegate = cheerManager;
            }
            
            Pizza *pizza;
            pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppoings];
            //            if(([Pizza getPizzaSize:size] == Large) && ([toppings containsObject:@"pepperoni"])) {
            //                pizza = [Pizza largePepperoni];
            //            } else if ([toppings containsObject:@"beef"] || [toppings containsObject:@"chicken"] || [toppings containsObject:@"pork"]) {
            //                pizza = [Pizza meatLoverWithSize: [Pizza getPizzaSize: size]];
            //            } else {
            //                pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppings];
            //            }
            NSLog(@"%@", pizza);
        }
        }
    return 0;
}
