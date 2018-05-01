//
//  QuestionManager.h
//  Assignment5
//
//  Created by Ayako Shiraishi on 2018-04-19.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property(nonatomic, strong) NSMutableArray *questions;

+ (QuestionManager *) manager;
- (void) addQuestions:(Question *) question;
- (NSString *) timeOutput;
@end
