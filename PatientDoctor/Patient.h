//
//  Patient.h
//  PatientDoctor
//
//  Created by Chris Jones on 2017-01-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL hasHealthCard;

- (instancetype)initWithName: (NSString *) name age:(NSInteger) age hasHealthCard:(BOOL) hasHealthCard;
- (void)visitDoctor: (Doctor *)doctor;

@end
