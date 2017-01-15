//
//  PrescriptionDatabase.m
//  PatientDoctor
//
//  Created by Chris Jones on 2017-01-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "PrescriptionManager.h"
#import "Patient.h"

@implementation PrescriptionManager

-(NSMutableSet *)providePrescriptionHistory: (Patient *)patient doctorID: (Doctor *)doctor {
    return self.prescriptionSet;
}

@end
