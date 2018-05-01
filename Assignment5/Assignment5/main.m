//
//  main.m
//  Assignment5
//
//  Created by Ayako Shiraishi on 2018-05-01.
//  Copyright © 2018 Ayako Shiraishi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

//NSString * getUserInput(NSString *prompt) {
//    char inputChars[255];
//    NSLog(@"%@", prompt);
//    fgets(inputChars, 255, stdin);
//    NSString *inputString = [NSString stringWithUTF8String:inputChars];
//    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        BOOL gameOn = YES;
        ScoreKeeper *sk = [[ScoreKeeper alloc] init];
        QuestionManager *qm = [QuestionManager manager];
        QuestionFactory *qf = [[QuestionFactory alloc]init];
        NSLog(@"MATHS!!");
        
        while(gameOn){
            Question *q1 = [qf generateRandomQuestion];
            //get user input
            NSString *input = [InputHandler getUserInput:[q1 question]];
            if ([input isEqualToString:@"quit"]){
                gameOn = NO;
                break;
            }
            NSString *answer = [NSString stringWithFormat:@"%ld", [q1 answer]];
            [qm addQuestions:q1];//add question to q1 manger
            if ([input isEqualToString: answer]){
                NSLog(@"Right!");
                [sk setRight:[sk right] + 1];
            }else{
                NSLog(@"Wrong!");
                [sk setWrong:[sk wrong] + 1];
            }
        }
        [sk displayResult];
        NSLog(@"%@", [qm timeOutput]);
    }
    return 0;
}

