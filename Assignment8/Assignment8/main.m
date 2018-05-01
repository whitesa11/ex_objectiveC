//
//  main.m
//  Assignment8
//
//  Created by Ayako Shiraishi on 2018-05-01.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Module/Kitchen.h"
#import "Module/Pizza.h"
#import "Util/InputHandler.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            NSString *inputString = [InputHandler getUserInputWithPrompt:@"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            
            // *large ham pinnapple cheese
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSInteger length = [commandWords count];
            NSString *size = commandWords[0]; //size
            NSArray *toppoings = [commandWords subarrayWithRange:NSMakeRange(1, length-1)];
            
            Pizza *pizza;
            if(([Pizza getPizzaSize:size] == Large) && [toppoings containsObject:@"pepparoni"]){
                pizza = [Pizza largePepparoni];
            }else if([toppoings containsObject:@"beef"] || [toppoings containsObject:@"pork"]|| [toppoings containsObject:@"chicken"]){
                pizza = [Pizza meatLoversWithSize:[Pizza getPizzaSize:size]];
            }
            else{
                pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppoings];
            }
            NSLog(@"%@", pizza);
        }
        
    }
    return 0;
}
