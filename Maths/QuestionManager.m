//
//  QuestionManager.m
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-06.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

-(instancetype) init {
    if (self = [super init]) {
        _questions = [NSMutableArray array];
    }
    return self;
}

-(NSString *)timeOutput {
    
    NSInteger totalTime = 0;
    
    // iterating through the array
    
    for (Question *question in self.questions) {
        totalTime += question.answerTime;
    }
    NSString *output = [NSString stringWithFormat:@"total time: %.2ld s, average time: %.2f s", (long)totalTime, totalTime / (1.0 * self.questions.count)];
    return output;
}



@end
