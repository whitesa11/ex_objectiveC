//
//  Doctor.h
//  Assignment7
//
//  Created by Ryuma Ohara on 2018-04-23.
//  Copyright © 2018 com.Ryuma. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patientList;

@property (nonatomic, strong) NSString *prescription;

- (instancetype)initWithName: (NSString *) name AndSpecialty:(NSString *) specialization;
- (BOOL) AddPatientIfPatientHasValidHealthCard: (Patient *) pat;
- (void) askSymptom :(Patient *) pat;
@end
