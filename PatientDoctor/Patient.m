//
//  Patient.m
//  PatientDoctor
//
//  Created by Chris Jones on 2017-01-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName: (NSString *) name age:(NSInteger) age hasHealthCard:(BOOL) hasHealthCard
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasHealthCard = hasHealthCard;
    }
    return self;
}

- (void)visitDoctor: (Doctor *)doctor {
    if([doctor doctorAppointment:self]) {
        NSArray *symptomArray = @[@"Headache", @"Stress", @"Fatigue", @"Slight Cough"];
        NSString *symptom = symptomArray[arc4random_uniform(4)];
        [doctor providePrescription:self symptoms:symptom];
        NSLog(@"Patient symptom: %@", symptom);
    }
}

@end
