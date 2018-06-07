//
//  main.m
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-05.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    
    BOOL gameOn = YES;
    NSLog(@"MATHS!!\n\n\n");

    ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
    scoreKeeper.rightCounter = 0;
    scoreKeeper.wrongCounter = 0;
    InputHandler *inputHandler = [[InputHandler alloc] init];
    QuestionManager *questionManager = [[QuestionManager alloc] init];
    QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
    
    while (gameOn) {
       
        Question *additionQuestion = [[Question alloc] init];
        [questionManager.questions addObject:additionQuestion];
        NSString *question = additionQuestion.question;
        NSLog(@"%@", question);
        
        NSString *result = [inputHandler promptInput];
        
        if ([result isEqualToString:@"quit"]) {
            gameOn = NO;
        } else if (result.integerValue != additionQuestion.answer) {
            NSLog(@"Wrong!");
            scoreKeeper.wrongCounter++;
        } else {
            NSLog(@"Right!");
            scoreKeeper.rightCounter++;
        }
        NSLog(@"%@", [scoreKeeper scoreResult]);
    }
    NSLog(@"%@", [questionManager timeOutput]);
    return 0;
}

