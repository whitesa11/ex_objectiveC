//
//  ScoreKeeper.h
//  Assignment3
//
//  Created by Ayako Shiraishi on 2018-04-18.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ScoreKeeper : NSObject
@property (nonatomic, assign) NSInteger right;
@property (nonatomic, assign) NSInteger wrong;

-(void) displayResult;
- (instancetype)init;
@end
