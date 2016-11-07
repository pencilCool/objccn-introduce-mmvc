#import <Specta/Specta.h> // #import "Specta.h" if you're using
#import <Expecta.h>
#import "PersonViewModel.h"
#import "Person.h"



SpecBegin(Person)

NSString *salutation = @"Dr.";
NSString *firstName = @"first";
NSString *lastName = @"last";
NSDate *birthdate = [NSDate dateWithTimeIntervalSince1970:0];

it (@"should use the salutation available. ", ^{
    Person *person = [[Person alloc] initWithSalutation:salutation firstName:firstName lastName:lastName birthdate:birthdate];
    PersonViewModel *viewModel = [[PersonViewModel alloc] initWithPerson:person];
    expect(viewModel.nameText).to.equal(@"Dr. first last");
});

it (@"should not use an unavailable salutation. ", ^{
    Person *person = [[Person alloc] initWithSalutation:nil firstName:firstName lastName:lastName birthdate:birthdate];
    PersonViewModel *viewModel = [[PersonViewModel alloc] initWithPerson:person];
    expect(viewModel.nameText).to.equal(@"first last");
});

it (@"should use the correct date format. ", ^{
    Person *person = [[Person alloc] initWithSalutation:nil firstName:firstName lastName:lastName birthdate:birthdate];
    PersonViewModel *viewModel = [[PersonViewModel alloc] initWithPerson:person];
    expect(viewModel.birthdateText).to.equal(@"Thursday January 1, 1970");
});
SpecEnd
