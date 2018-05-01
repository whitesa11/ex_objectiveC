//
//  QuestionFactory.m
//  Assignment5!
//
//  Created by Ayako Shiraishi on 2018-04-19.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion",
                          @"DivisionQuestion",
                          @"SubtractionQuestion",
                          @"MultiplicationQuestion"];
    }
    return self;
}

-(Question *) generateRandomQuestion{
    //polymorphism
    //    Question *q = [[AdditionQuestion alloc] init];
    //    [q generateQuestion];
    int index = arc4random_uniform(4);
    NSString *questionType = [_questionTypes objectAtIndex:index];
     //using string to create instance of the class
    Question *q =[[NSClassFromString(questionType)alloc] init];
    return q;
}
@end
