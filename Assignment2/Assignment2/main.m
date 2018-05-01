//
//  main.m
//  Assignment2
//
//  Created by Ayako Shiraishi on 2018-05-01.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:10];
        Box *box2 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:1];
        NSLog(@"Volume of box1 is %f", [box1 volume]);
        NSLog(@"Box1 can fit %f Box2", [box1 ratio: box2]);
        
        Person *p1 = [[Person alloc] initWith:26 WithName:@"Miho"];
        int age = [p1 age]; // p1.getAge();
        NSLog(@"%@ is %d years old", [p1 name], [p1 age]);
        [p1 setName: @"Alex"];
        [p1 setAge: 21];
        NSLog(@"%@ is %d years old", [p1 name], [p1 age]);
        
    }
    return 0;
}
