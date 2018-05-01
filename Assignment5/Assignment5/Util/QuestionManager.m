//
//  QuestionManager.m
//  Assignment5
//
//  Created by Ayako Shiraishi on 2018-04-19.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
-(instancetype) init{
    self = [super init];
    if (self){
        _questions = [NSMutableArray array];
    }
    return self;
}

+ (QuestionManager *) manager{
    return [[QuestionManager alloc] init];
}

- (void) addQuestions:(Question *) question{
    [_questions addObject:question];
}

-(NSString *) timeOutput {
    Question *lastQ =[_questions lastObject];
    Question *firstQ = [_questions firstObject];
    NSTimeInterval total = [lastQ.endTime timeIntervalSinceDate:firstQ.startTime];
    NSUInteger numQ = [_questions count];
    // 2:00:01   2:10:14
    //_question
    //          last question (endtime) - first question (starttime)
    //          = total time
    //          [_questions count] ===> the number of questions
   NSString *result = [NSString stringWithFormat: @"total time: %.2fs, avarage time: %.2fs",total,total / numQ];
    return result;

}



@end
