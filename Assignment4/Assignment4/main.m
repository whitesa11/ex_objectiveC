//
//  main.m
//  Assignment4
//
//  Created by Ayako Shiraishi on 2018-05-01.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"
#import "PhoneNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n>>> ";
        ContactList *list = [[ContactList alloc] init];
        NSMutableArray *commands = [NSMutableArray array];
        // REPL : Read Evaluate Print Loop
        BOOL isOn = YES;
        while (isOn) {
            NSString *input = [InputHandler getUserInputWithPrompt: menu];
            NSArray *splitted = [input componentsSeparatedByString:@" "];
            [commands addObject:input];
            if ([input isEqualToString:@"quit"]) {
                isOn = NO;
                break;
            } else if ([input isEqualToString:@"new"]) {
                NSString *name = [InputHandler getUserInputWithPrompt: @"\nEnter the name: "];
                NSString *email = [InputHandler getUserInputWithPrompt: @"\nEnter the email: "];
                NSString *label = [InputHandler getUserInputWithPrompt: @"\nWhat kind of phone number (work, home, mobile, etc): "];
                NSString *number = [InputHandler getUserInputWithPrompt: @"\nEnter the email phone number: "];
                // TODO: bonus 3 - prevent duplicate
                
                BOOL nameExists = [list shouldHaveContactwith:name];
                BOOL emailExists = [list shouldHaveContactwith:email];
                if (!nameExists && !emailExists) {
                    Contact *newContact = [[Contact alloc] initWithName: name AndEmail: email];
                    PhoneNumber *pnumber = [[PhoneNumber alloc] initWithLabel:label AndDigits:number];
                    [newContact addPhoneNumber: pnumber];
                    while (YES) {
                        NSString *ans = [InputHandler getUserInputWithPrompt: @"More phone number? (y/n) "];
                        if ([ans isEqualToString:@"y"]){
                            NSString *label = [InputHandler getUserInputWithPrompt: @"\nWhat kind of phone number (work, home, mobile, etc): "];
                            NSString *number = [InputHandler getUserInputWithPrompt: @"\nEnter the email phone number: "];
                            PhoneNumber *pnumber = [[PhoneNumber alloc] initWithLabel:label AndDigits:number];
                            [newContact addPhoneNumber: pnumber];
                        } else {
                            break;
                        }
                    }
                    [list addContact: newContact];
                } else {
                    NSLog(@"Contact info already exists...");
                }
            } else if ([input isEqualToString:@"list"]) {
                // print all contacts in ContactList mutableArray
                NSInteger index = 0;
                NSMutableArray *contacts = [list contacts];
                // loop contacts print one by one.
                for (Contact *contact in contacts) {
                    NSLog(@"%ld: <%@> (%@)", index, [contact name], [contact email]);
                    index++;
                }
            } // TODO: bonus 1 - show
            else if ([[splitted objectAtIndex:0] isEqualToString: @"show"]) {
                NSString *index = [splitted objectAtIndex: 1];
                NSMutableArray *contacts = [list contacts];
                Contact *contact = [contacts objectAtIndex: [index integerValue]];
                NSLog(@"%@: <%@> (%@)", index, [contact name], [contact email]);
            }
            // TODO: bonus 2 - find
            else if ([[splitted objectAtIndex:0] isEqualToString:@"find"]) {
                NSInteger index = 0;
                NSString *keyword = [splitted objectAtIndex: 1];
                NSMutableArray *contacts = [list contacts];
                for (Contact *contact in contacts) {
                    if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString: keyword]) {
                        NSLog(@"%ld: <%@> (%@)", index, [contact name], [contact email]);
                    }
                    index++;
                }
            }
            else if ([input isEqualToString:@"history"]) {
                // TODO: bonus 5 - history
                for(int i = (int) commands.count - 3; i < commands.count; i++) {
                    NSLog(@"%@", [commands objectAtIndex: i]);
                }
            }
        }
        
    }
    return 0;
}

