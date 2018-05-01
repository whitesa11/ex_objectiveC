//
//  ScoreKeeper.m
//  Assiment3
//
//  Created by Ayako Shiraishi on 2018-04-17.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}
-(void) displayResult{
    CGFloat percentage = (CGFloat) _right / (_right + _wrong) * 100;
    
    NSLog(@"score: %ld right , %ld wrong ------- %.2f%%", _right, _wrong, percentage);
}
@end
