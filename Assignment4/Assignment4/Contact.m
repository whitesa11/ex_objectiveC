//
//  Contact.m
//  Assignment4
//
//  Created by Ayako Shiraishi on 2018-04-18.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "Contact.h"
@implementation Contact
- (instancetype)initWithName:(NSString *) name AndEmail:(NSString *) email;
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _numbers = [NSMutableArray array];
    }
    return self;
}

- (void) addPhoneNumber: (PhoneNumber *) number {
    [_numbers addObject:number];
}
@end


