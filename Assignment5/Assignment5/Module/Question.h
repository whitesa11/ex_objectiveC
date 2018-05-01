//
//  Question.h
//  Assignment5!
//
//  Created by Ayako Shiraishi on 2018-04-19.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
//superclass

@interface Question : NSObject
@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;

@property (nonatomic, assign) NSInteger leftValue;
@property (nonatomic, assign) NSInteger rightValue;

@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

//ddont have to add
//- (instancetype)init ;
//- (NSInteger) answer;

- (void)generateQuestion;
- (NSInteger) answerTime;
@end
