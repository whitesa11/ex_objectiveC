//
//  ContactList.m
//  Assignment4
//
//  Created by Ayako Shiraishi on 2018-04-18.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addContact: (Contact *) newContact {
    [_contacts addObject: newContact];
}
- (BOOL)shouldHaveContactwith:(NSString *)keyword{
    for (Contact *contact in _contacts){
        if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString:keyword]){
            return YES;
        }
    }
    return NO;
}

-(Contact *) findContact:(NSString *)keyword{
    for(Contact *contact in _contacts){
        if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString:keyword]){
            return contact;
        }
    }
    return nil;
}
@end
