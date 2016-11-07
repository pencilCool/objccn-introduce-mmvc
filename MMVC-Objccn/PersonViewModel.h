//
//  PersonViewModel.h
//  MMVC-Objccn
//
//  Created by tangyuhua on 2016/11/7.
//  Copyright © 2016年 tangyuhua. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@interface PersonViewModel : NSObject


- (instancetype)initWithPerson:(Person *)person;

@property (nonatomic, readonly) Person *person;

@property (nonatomic, readonly) NSString *nameText;
@property (nonatomic, readonly) NSString *birthdateText;

@end
