//
//  PrescriptionDatabase.h
//  PatientDoctor
//
//  Created by Chris Jones on 2017-01-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Prescription;
@class Patient;
@class Doctor;

@interface PrescriptionManager : NSObject

@property (nonatomic, strong) NSMutableSet <Prescription*> *prescriptionSet;
@property (nonatomic, assign) BOOL isPrescriptionHistoryApproved;

-(NSMutableSet *)providePrescriptionHistory: (Patient *)patient doctorID: (Doctor *)doctor;

@end
