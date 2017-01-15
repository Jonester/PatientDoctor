//
//  PrescriptionDatabase.m
//  PatientDoctor
//
//  Created by Chris Jones on 2017-01-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "PrescriptionManager.h"
#import "Patient.h"
#import "Doctor.h"

@implementation PrescriptionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _isPrescriptionHistoryApproved = YES;
        _prescriptionSet = [NSMutableSet new];
    };
    return self;
}

-(NSMutableSet *)providePrescriptionHistory: (Patient *)patient doctorID: (Doctor *)doctor {
    NSLog(@"Patient: %@'s prescription history has been provided to %@.", patient.name, doctor.name);
    return self.prescriptionSet;
}

@end
