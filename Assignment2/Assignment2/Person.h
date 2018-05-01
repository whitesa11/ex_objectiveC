//
//  Person.h
//  Assignment2
//
//  Created by Ayako Shiraishi on 2018-05-01.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

- (id) initWith:(int) age WithName:(NSString *) name;

@end
