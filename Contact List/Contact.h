//
//  Contact.h
//  Contact List
//
//  Created by Aaron Johnson on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
@property (nonatomic) NSString* name;
@property (nonatomic) NSString* email;
@property (nonatomic) NSMutableArray* numbers;
-(instancetype)initWithName:(NSString*)name andEmail:(NSString*)email;
-(NSString*)getName;
-(NSString*)getEmail;
-(void)addNewPhone:(NSString*)phoneName andNumber:(NSString *)phoneNumber;
-(NSString*)displayNumbers;
@end
