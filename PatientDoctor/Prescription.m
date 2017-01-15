//
//  Prescription.m
//  PatientDoctor
//
//  Created by Chris Jones on 2017-01-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)init
{
    self = [super init];
    if (self) {
        _medication = [NSString new];
        _doctorName = [NSString new];
    }
    return self;
}

@end
