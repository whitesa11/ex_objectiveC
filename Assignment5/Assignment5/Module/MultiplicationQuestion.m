//
//  MultiplicationQuestion.m
//  Assignment5!
//
//  Created by Ayako Shiraishi on 2018-04-19.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion{//overriding the superclass
    [super setQuestion:[NSString stringWithFormat:@"%ld x %ld = ", [super leftValue], [super rightValue]]];
    [super setAnswer: ([super leftValue] * [super rightValue])];
}

@end
