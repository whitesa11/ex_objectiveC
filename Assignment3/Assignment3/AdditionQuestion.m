//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by Ayako Shiraishi on 2018-04-18.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        //get 2 randam numbers
        //(8 - 98) + 10 == 10 -99
        int num1 = arc4random_uniform(98) + 10;
        int num2 = arc4random_uniform(91) + 10;
        
        //@"first + second"
        _question =[NSString stringWithFormat: @"%d + %d", num1, num2];
        _answer = num1 + num2;
        
    }
    return self;
}
@end
