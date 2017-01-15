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
        _name = name;
        _specialization = specialization;
    }
    return self;
}

- (BOOL)doctorAppointment: (Patient *) patient {
    if (patient.hasHealthCard) {
        self.patientList[patient.name] = @(patient.age);
        return YES;
    } else {
        NSLog(@"A health card is needed to see the doctor.");
        return NO;
    }
}

- (Prescription *)providePrescription: (Patient *)patient symptoms: (NSString *)symptoms {
    
    PrescriptionManager *prescriptionManager = [PrescriptionManager new];
    prescriptionManager.prescriptionSet = [prescriptionManager providePrescriptionHistory:patient doctorID:self];
    
    if (prescriptionManager.isPrescriptionHistoryApproved) {
        _prescription = [Prescription new];
        _prescription.doctorName = _name; //Set the doctor ID for the prescription
        [prescriptionManager.prescriptionSet addObject:self.prescription];
        
    if ([symptoms isEqualToString:@"Headache"]) {
        _prescription.medication = @"Tylenol.";
        NSLog(@"%@", self.prescription.medication);
        return self.prescription;
    } if ([symptoms isEqualToString:@"Stress"]) {
        _prescription.medication = @"Exercise more and try meditation.";
        NSLog(@"%@", self.prescription.medication);
        return self.prescription;
    } if ([symptoms isEqualToString:@"Fatigue"]) {
        _prescription.medication = @"Try to be more active.";
        NSLog(@"%@", self.prescription.medication);
    }
        _prescription.medication = @"Get some much needed rest.";
        NSLog(@"%@", self.prescription.medication);
        return self.prescription;
    }
    _prescription.medication = @"A prescription cannot be given due to medical history.";
    NSLog(@"%@", self.prescription.medication);
    return self.prescription;
    }
    
   
@end
