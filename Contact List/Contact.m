//
//  Contact.m
//  Contact List
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "Contact.h"
#import "Number.h"

@implementation Contact
-(instancetype)initWithName:(NSString *)name andEmail:(NSString *)email{
    self = [super init];
    if(self){
        _name = name;
        _email = email;
        _numbers = [NSMutableArray new];
    }
    return self;
}
-(NSString*)getName{
    return self.name;
}

-(NSString*)getEmail{
    return self.email;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@> (%@)\n%@", self.name, self.email, [self displayNumbers]];
}

-(void)addNewPhone:(NSString*)phoneName andNumber:(NSString *)phoneNumber
{
    Number *newNumber = [[Number alloc] initWithName:phoneName andNumber:phoneNumber];
    [self.numbers addObject:newNumber];
}

-(NSString *)displayNumbers
{
    NSMutableString* numbers = [NSMutableString new];
    for(Number *number in self.numbers){
        NSString* temp = [NSString stringWithFormat:@"%@\n", number];
        [numbers appendString:temp];
    }
    return numbers;
}




@end
