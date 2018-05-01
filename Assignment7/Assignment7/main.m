//
//  main.m
//  Assignment7
//
//  Created by Ayako Shiraishi on 2018-05-01.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *p1 = [[Patient alloc] initWithName:@"Alex" AndGender:MALE AndAge:21 AndHasHelthCard:NO AndSymptom: @"cold"];
        Patient *p2 = [[Patient alloc] initWithName:@"Miho" AndGender:FEMALE AndAge:26 AndHasHelthCard:YES AndSymptom: @"cold"];
        Patient *p3 = [[Patient alloc] initWithName:@"Elif" AndGender:FEMALE AndAge:21 AndHasHelthCard:YES AndSymptom: @"cold"];
        
        Doctor *d1 = [[Doctor alloc] initWithName: @"Kana" AndSpecialty:@"Brain Surgeon"];
        
        if ([p2 visitDoctor:d1]) {
            [d1 askSymptom:p2];
            //NSLog(@"SUCCESS");
        } else {
            //NSLog(@"FAILED TO VISUT");
        }
    }
    return 0;
}
