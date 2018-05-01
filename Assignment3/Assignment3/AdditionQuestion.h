//
//  AdditionQuestion.h
//  Assignment3
//
//  Created by Ayako Shiraishi on 2018-04-18.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject
@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;
- (instancetype)init ;

@end
