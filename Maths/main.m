//
//  main.m
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-05.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    
    NSLog(@"MATHS!!");
    
    
    BOOL gameOn = YES;
    
    while (gameOn) {
       
        AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
        NSString *question = additionQuestion.question;
        NSLog(@"%@", question);
        
        InputHandler *inputHandler = [[InputHandler alloc] init];
        NSString *result = [inputHandler promptInput];
        
        if ([result isEqualToString:@"quit"]) {
            gameOn = NO;
        } else if (result.integerValue != additionQuestion.answer) {
            NSLog(@"Wrong!");
        } else if (result.integerValue == additionQuestion.answer) {
            NSLog(@"Right!");
        }
    }
    return 0;
}

