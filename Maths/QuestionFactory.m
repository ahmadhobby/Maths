//
//  QuestionFactory.m
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-06.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

-(Question *)generateRandomQuestion {
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    int randomNumber = arc4random_uniform(4);
    NSString *randomSubclassString = questionSubclassNames[randomNumber];
    return [[NSClassFromString(randomSubclassString) alloc] init];
}

-(instancetype)init {
    if (self = [super init]) {
        NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

@end
