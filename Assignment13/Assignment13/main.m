//
//  main.m
//  Assignment13
//
//  Created by Ayako Shiraishi on 2018-05-03.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *input = @"Kale Chips";
        NSString *latin = [input stringByPigLatinization];
        NSLog(@"%@ becomes %@", input, latin);
    }
    return 0;
}
