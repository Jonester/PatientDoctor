//
//  Doctor.h
//  PatientDoctor
//
//  Created by Chris Jones on 2017-01-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;
@class Prescription;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, readonly) Prescription *prescription;

- (instancetype)initWithName: (NSString *)name specialization: (NSString *) specialization;
- (BOOL)doctorAppointment: (Patient *) patient;
- (Prescription *)providePrescription: (Patient *)patient symptoms: (NSString *)symptoms;

@end
