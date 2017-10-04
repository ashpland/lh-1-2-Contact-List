//
//  ContactList.h
//  Contact List
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject
@property (nonatomic) NSMutableArray *contacts;

-(bool)addContact:(Contact *)newContact;
-(Contact *)getContactAtIndex:(int)index;
-(ContactList *)findContactContaining:(NSString *)string;
@end
