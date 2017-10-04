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
-(bool)addContact:(Contact *)newContact{
    ContactList *checkResults = [self findContactContaining:newContact.email];
    if (checkResults.contacts.count == 0) {
        [self.contacts addObject:newContact];
        return true;
    }
    return false;
}

- (NSString *)description
{
    NSMutableString* listOfContacts = [NSMutableString new];
    for(int i = 0; i < self.contacts.count; i++){
        NSString* temp = [NSString stringWithFormat:@"%d:%@",i,self.contacts[i]];
        [listOfContacts appendString:temp];
    }
    
    return listOfContacts;
}

-(Contact *)getContactAtIndex:(int)index{
    return self.contacts[index];
}

-(ContactList *)findContactContaining:(NSString *)searchString{
    ContactList *searchResults = [ContactList new];
    for (Contact *contact in self.contacts){
        if ([contact.name containsString:searchString] || [contact.email containsString:searchString]){
            [searchResults addContact:contact];
        }
    }
    
    return searchResults;
}



@end
