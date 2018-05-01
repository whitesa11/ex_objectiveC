//
//  main.m
//  Assignment6
//
//  Created by Ayako Shiraishi on 2018-05-01.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *player = [[GameController alloc] init];
        
        while (YES) {
            NSString *input = [InputHandler getUserInputWithPrompt:@"Enter 'r' to roll the dice"];
            if ([input isEqualToString:@"r"]) {
                [player rollTheRest];
                while ([player MAX_ROLLS] > 0) {
                    NSString *hold = [InputHandler getUserInputWithPrompt:@"Enter a number to hold a die or 'q' to don't want to hold any die:"];
                    if ([hold isEqualToString:@"q"]) {
                        break;
                    }
                    [player holdDie: [hold integerValue]];
                }
                
                
            } else {
                break;
            }
        }
        [player displayDice];
    }
    
    
    return 0;
}
