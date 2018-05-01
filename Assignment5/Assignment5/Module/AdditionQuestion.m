//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by Ayako Shiraishi on 2018-04-18.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype) init{
    self = [super init];
    
    if(self){
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion{
    [super setQuestion:[NSString stringWithFormat:@"%ld + %ld =", [super leftValue],[super rightValue]]];
    [super setAnswer:([super leftValue] + [super rightValue])];
}

@end
