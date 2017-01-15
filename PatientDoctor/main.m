//
//  main.m
//  PatientDoctor
//
//  Created by Chris Jones on 2017-01-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor = [Doctor new];
        Patient *patient = [[Patient alloc]initWithName:@"Joe" age:32 hasHealthCard:YES];
        
        [patient visitDoctor:doctor];
        
    }
    return 0;
}
