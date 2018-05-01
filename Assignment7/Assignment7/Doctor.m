//
//  Doctor.m
//  Assignment7
//
//  Created by Ryuma Ohara on 2018-04-23.
//  Copyright © 2018 com.Ryuma. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor
- (instancetype)initWithName: (NSString *) name AndSpecialty:(NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientList = [NSMutableArray array];
    }
    return self;
}

- (BOOL) AddPatientIfPatientHasValidHealthCard: (Patient *) pat {
    NSLog(@"let me see your healthCard.");
    if ([pat hasHealthCard]) {
        [_patientList addObject:pat];
        NSLog(@"You have a valid healthCard.");
        return YES;
    } else {
        NSLog(@"You do not have valid healthcard.");
        return NO;
    }
}

- (void) askSymptom: (Patient *) pat {
    NSLog(@"What is your symptom?");
    NSLog(@"%@", [pat symptom]);
    //[_patientList addObject:[pat symptom]];
}

@end
