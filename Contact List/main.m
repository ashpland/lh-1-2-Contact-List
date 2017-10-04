//
//  main.m
//  Contact List
//
//  Created by Andrew on 2017-10-03.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [InputCollector new];
        
        NSArray *menuOptions = @[@"Quit", @"New", @"List", @"Show", @"Find", @"Number", @"History"];
        
        bool doContinue = true;
        ContactList *list = [ContactList new];
        
        // Fake People!
        
        Contact* fake1 = [[Contact alloc] initWithName:@"Bob" andEmail:@"bob@burgers.com"];
        [fake1 addNewPhone:@"Mobile" andNumber:@"555-8099"];
        [list addContact:fake1];
        [fake1 addNewPhone:@"Home" andNumber:@"555-2799"];
        
        Contact* fake2 = [[Contact alloc] initWithName:@"Gene" andEmail:@"Gene@burgers.com"];
        [list addContact:fake2];
        Contact* fake3 = [[Contact alloc] initWithName:@"Trash King" andEmail:@"trash@burgers.com"];
        [list addContact:fake3];
        
        
        while (doContinue) {
            NSLog(@"\nMenu Options: \n%@", menuOptions);
            
            NSString *menuResponse = [inputCollector inputForPrompt:@"Choice"];
            //NSString *fakeChoice = @"Quit";
            
            NSArray *explodedResponse = [menuResponse componentsSeparatedByString:@" "];
            
            NSString *menuChoice = explodedResponse[0];

            NSUInteger choice = [menuOptions indexOfObject:menuChoice];

            switch (choice) {
                // quit
                case 0:
                    NSLog(@"Adieu!");
                    doContinue = false;
                    break;
                // new
                case 1:{
                    NSLog(@"New");
                    Contact* new = [[Contact alloc] initWithName:[inputCollector inputForPrompt:@"Name"] andEmail:[inputCollector inputForPrompt:@"Email"]];
                    if(![list addContact:new]){
                        NSLog(@"Email already exists.");
                    }
                    break;
                }
                // list
                case 2:{
                    NSLog(@"List");
                    NSLog(@"\n%@", list);
                    break;
                }
                //show
                case 3:{
                    NSLog(@"Show");
                    if (explodedResponse.count > 1){
                        int index = [explodedResponse[1] intValue];
                        NSLog(@"\n%@", [list getContactAtIndex:index]);
                    }
                    else{
                        NSLog(@"Please enter an index number");
                    }
                    break;
                }
                //find
                case 4:{
                    NSLog(@"Find");
                    
                    if (explodedResponse[1]){
                        ContactList *searchResults = [list findContactContaining:explodedResponse[1]];
                        if(searchResults.contacts.count > 0){
                            NSLog(@"%@", searchResults);
                        }
                        else {
                            NSLog(@"No results found :(");
                        }
                    }
                    else{
                        NSLog(@"Please enter a search string");
                    }
                    
                    
                    
                    break;
                }
                    
                // number
                case 5: {
                    NSLog(@"Number");
                    NSLog(@"%@", list);
                    
                    int index = (int)[[inputCollector inputForPrompt:@"Choose a contact"] integerValue];
                    Contact *needsNumber =[list getContactAtIndex:index];
                    [needsNumber addNewPhone:[inputCollector inputForPrompt:@"Phone Name"] andNumber:[inputCollector inputForPrompt:@"Phone Number"]];
                    
                    
                    NSLog(@"%@", needsNumber);

                    
                    
                    break;
                }
                    
                default:
                    NSLog(@"That's not an option");
                    break;
            }
        }
        
        //NSString *usernameInput = [inputCollector inputForPrompt:@"Enter your username"];
        
        
        
        
        
    }
    return 0;
}
