//
//  ContactList.m
//  Contact List
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
-(instancetype)init{
    self = [super init];
    if(self){
        _contacts = [NSMutableArray new];
    }
    return self;
}
-(void)addContact:(Contact *)newContact{
    [self.contacts addObject:newContact];
}
@end
