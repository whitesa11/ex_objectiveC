//
//  InputHandler.m
//  Assignment3
//
//  Created by Ayako Shiraishi on 2018-04-18.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *) getUserInput:(NSString *) prompt {
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String: inputChars];
    NSCharacterSet *removeChaset = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedString  = [inputString stringByTrimmingCharactersInSet: removeChaset];
    return trimmedString;
}
@end

