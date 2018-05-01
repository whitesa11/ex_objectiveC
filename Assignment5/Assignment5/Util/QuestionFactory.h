//
//  QuestionFactory.h
//  Assignment5!
//
//  Created by Ayako Shiraishi on 2018-04-19.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Question;

@interface QuestionFactory : NSObject
@property (nonatomic, assign) NSArray *questionTypes;
- (Question *) generateRandomQuestion;
@end
