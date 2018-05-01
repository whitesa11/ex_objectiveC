//
//  Question.m
//  Assignment5!
//
//  Created by Ayako Shiraishi on 2018-04-19.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype)init
{
    self = [super init];
    if (self) {
        //get two random number
        //@"first + second"
        _leftValue = arc4random_uniform(91) + 10; //10 - 100
        _rightValue = arc4random_uniform(91) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

- (void) generateQuestion{
    
}

- (NSInteger) answer{ //override the answer getter
    _endTime = [NSDate date];
    return _answer;
}

- (NSInteger)answerTime{
    NSTimeInterval interval = [_endTime timeIntervalSinceDate:_startTime];
    //interval(in secs)
    
    return interval;
}

@end
