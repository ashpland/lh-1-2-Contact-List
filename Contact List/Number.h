//
//  Number.h
//  Contact List
//
//  Created by Andrew on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Number : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *number;
- (instancetype)initWithName:(NSString *)name andNumber:(NSString *)number;


@end
