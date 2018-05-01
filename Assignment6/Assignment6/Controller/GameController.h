//
//  GameController.h
//  Assignment6
//
//  Created by Ayako Shiraishi on 2018-04-20.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, assign) NSInteger MAX_ROLLS;
@property (nonatomic, strong) NSMutableArray <Dice *> *dice;

- (void) holdDie: (NSInteger) dieNumber;
- (void) rollTheRest;
- (void) displayDice;
@end
