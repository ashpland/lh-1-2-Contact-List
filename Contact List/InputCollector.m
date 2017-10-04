//
//  InputCollector.m
//  Contact List
//
//  Created by Andrew on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
{
    NSLog(@"%@: ", promptString);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
}

-(NSString *)inputForPromptWithLog:(NSString *)promptString{
    NSString *input = [self inputForPrompt:promptString];
    self.historyArray = [[NSArray alloc] initWithObjects:input, self.historyArray[0], self.historyArray[1], self.historyArray[2], nil];
    return input;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _historyArray = [[NSArray alloc] initWithObjects:@"",@"",@"",@"", nil];
    }
    return self;
}

- (NSString *)description
{
    NSMutableString *historyOutput = [NSMutableString new];
    for(NSString *history in self.historyArray){
        NSString* temp = [NSString stringWithFormat:@"%@\n", history];
        [historyOutput appendString:temp];
    }
    return historyOutput;
}


@end
