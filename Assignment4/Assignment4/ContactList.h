//
//  ContactList.h
//  Assignment4
//
//  Created by Ayako Shiraishi on 2018-04-18.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@class Contact;
@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;

- (void) addContact: (Contact *) newContact;
- (BOOL)shouldHaveContactwith:(NSString *)keyword;
-(Contact *) findContact:(NSString *)keyword;

@end
