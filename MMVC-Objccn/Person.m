//
//  Person.m
//  MMVC-Objccn
//
//  Created by tangyuhua on 2016/11/7.
//  Copyright © 2016年 tangyuhua. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthdate:(NSDate *)birthdate {
    self = [super init];
    if (self) {
        _salutation = salutation;
        _firstName = firstName;
        _lastName = lastName;
        _birthdate = birthdate;
    }
    return self;
}

@end
