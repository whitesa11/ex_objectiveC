//
//  Person.m
//  Assignment2
//
//  Created by Ayako Shiraishi on 2018-05-01.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//


#import "Person.h"
@implementation Person

- (id) initWith:(int) age WithName:(NSString *) name {
    self = [super init];
    if (self) {
        _age = age;
        _name = name;
    }
    return self;
}

@end
