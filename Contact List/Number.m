//
//  Number.m
//  Contact List
//
//  Created by Andrew on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "Number.h"

@implementation Number

- (instancetype)init
{
    return [self initWithName:@"Default Name" andNumber:@"Default Number"];
}

- (instancetype)initWithName:(NSString *)name andNumber:(NSString *)number
{
    self = [super init];
    if (self) {
        _name = name;
        _number = number;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@: %@", self.name, self.number];
}

@end
