//
//  InputCollector.h
//  Contact List
//
//  Created by Andrew on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject
@property (nonatomic) NSArray* historyArray;

-(NSString *)inputForPrompt:(NSString *)promptString;
-(NSString *)inputForPromptWithLog:(NSString *)promptString;


@end
