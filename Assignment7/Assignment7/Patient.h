//
//  Patient.h
//  Assignment7
//
//  Created by Ryuma Ohara on 2018-04-23.
//  Copyright © 2018 com.Ryuma. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

typedef enum : NSInteger {
    MALE,
    FEMALE
} Gender;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) Gender gender;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL hasHealthCard;

@property (nonatomic, strong) NSString *symptom;

- (instancetype)initWithName:(NSString *) name AndGender:(Gender) gender AndAge:(NSInteger) age AndHasHelthCard: (BOOL) healthCard AndSymptom:(NSString *) symptom;
- (BOOL) visitDoctor: (Doctor *) doc ;
- (void) requestMedication: (Doctor *) doc;


@end
