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

- (NSString *)description
{
    NSMutableString* names = [NSMutableString new];
    for(int i = 0; i < self.contacts.count; i++){
        NSString* temp = [NSString stringWithFormat:@"%d:<%@> (%@)\n",i,[self.contacts[i] getName], [self.contacts[i] getEmail]];
        [names appendString:temp];
    }
    return names;
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
