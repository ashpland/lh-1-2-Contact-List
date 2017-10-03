//
//  Contact.m
//  Contact List
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "Contact.h"

@implementation Contact
-(instancetype)initWithName:(NSString *)name andEmail:(NSString *)email{
    self = [super init];
    if(self){
        _name = name;
        _email = email;
    }
    return self;
}
@end
