//
//  Doctor.m
//  PatientDoctor
//
//  Created by Chris Jones on 2017-01-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"
#import "PrescriptionManager.h"

@interface Doctor ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, NSNumber *> *patientList;

@end

@implementation Doctor

- (instancetype)initWithName: (NSString *)name specialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = @"Dr. Jones";
        _specialization = specialization;
        _prescription.doctorName = _name;
    }
    return self;
}

- (NSString *)doctorAppointment: (Patient *) patient {
    if (patient.hasHealthCard) {
        self.patientList[patient.name] = @(patient.age);
        return @"You may see the doctor.";
    } else {
        return @"Sorry, you must have a valid health card to the doctor.";
    }
}

- (Prescription *)providePrescription: (Patient *)patient symptoms: (NSString *)symptoms {
    PrescriptionManager *prescriptionManager = [PrescriptionManager new];
    prescriptionManager.prescriptionSet = [prescriptionManager providePrescriptionHistory:patient doctorID:self];
    
    if (prescriptionManager.isPrescriptionHistoryApproved) {
        [prescriptionManager.prescriptionSet addObject:self.prescription];
        
    if ([symptoms isEqualToString:@"Headache"]) {
        _prescription.medication = @"Tylenol.";
        return self.prescription;
    } if ([symptoms isEqualToString:@"Stress"]) {
        _prescription.medication = @"Exercise more and try meditation.";
        return self.prescription;
    } if ([symptoms isEqualToString:@"Fatigue"]) {
        _prescription.medication = @"Try to be more active";
    }
        _prescription.medication = @"Eat healthier and be more active.";
        return self.prescription;
    }
        return nil;
    }
    
   
@end
