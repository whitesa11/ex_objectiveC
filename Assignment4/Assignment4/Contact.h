//
//  Contact.h
//  Assignment4
//
//  Created by Ayako Shiraishi on 2018-04-18.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>
#import "PhoneNumber.h"

@interface Contact : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSMutableArray *numbers;

- (instancetype)initWithName:(NSString *) name AndEmail:(NSString *) email;
- (void) addPhoneNumber: (PhoneNumber *) number;
@end
