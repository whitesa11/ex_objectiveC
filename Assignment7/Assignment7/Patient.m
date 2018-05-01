//
//  Patient.m
//  Assignment7
//
//  Created by Ryuma Ohara on 2018-04-23.
//  Copyright © 2018 com.Ryuma. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *) name AndGender:(Gender) gender AndAge:(NSInteger) age AndHasHelthCard: (BOOL) healthCard AndSymptom:(NSString *) symptom
{
    self = [super init];
    if (self) {
        _name = name;
        _gender = gender;
        _age = age;
        _hasHealthCard = healthCard;
        _symptom = symptom;
    }
    return self;
}

- (BOOL) visitDoctor: (Doctor *) doc {
    NSLog(@"Hello Dr. %@, My name is %@, I need your help.", [doc name], _name);
    return [doc AddPatientIfPatientHasValidHealthCard: self];
}

- (void) requestMedication: (Doctor *) doc {
    if ([doc AddPatientIfPatientHasValidHealthCard: self] == YES) {
        NSLog(@"Yes");
    } else {
        NSLog(@"no");
    }
    
}

@end
