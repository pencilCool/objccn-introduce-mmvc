//
//  ViewController.m
//  MMVC-Objccn
//
//  Created by tangyuhua on 2016/11/7.
//  Copyright © 2016年 tangyuhua. All rights reserved.
//

#import "PersonViewController.h"
#import "Person.h"

@interface PersonViewController ()
@property (nonatomic, strong) Person *model;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *birthdateLabel;

@end


@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDate *myBirthDay = [NSDate dateWithTimeIntervalSince1970:-26*365*12*60*60];
    self.model = [[Person alloc]initWithSalutation:@"Hello world!" firstName:@"tang" lastName:@"yuhua" birthdate:myBirthDay];
    
    if (self.model.salutation.length > 0) {
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@ %@", self.model.salutation, self.model.firstName, self.model.lastName];
    } else {
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", self.model.firstName, self.model.lastName];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    self.birthdateLabel.text = [dateFormatter stringFromDate:self.model.birthdate];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
