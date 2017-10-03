//
//  main.m
//  Contact List
//
//  Created by Andrew on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [InputCollector new];
        
        NSArray *menuOptions = @[@"Quit", @"New", @"List", @"Show", @"Find", @"History"];
        
        bool doContinue = true;
        
        while (doContinue) {
            NSLog(@"\nMenu Options: \n%@", menuOptions);
            
            //NSString *menuChoice = [inputCollector inputForPrompt:@"Choice:"];
            NSString *fakeChoice = @"Quit";
            
            NSUInteger choice = [menuOptions indexOfObject:fakeChoice];

            switch (choice) {
                // quit
                case 0:
                    NSLog(@"Zero Case");
                    doContinue = false;
                    break;
                case 1:
                    NSLog(@"New");
                default:
                    NSLog(@"That's not an option");
                    break;
            }
        }
        
        //NSString *usernameInput = [inputCollector inputForPrompt:@"Enter your username"];
        
        
        
        
        
    }
    return 0;
}
