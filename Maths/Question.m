//
//  Question.m
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-05.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    
    if (self = [super init]) {
        NSUInteger r1 = arc4random_uniform(90) + 10;
        NSUInteger r2 = arc4random_uniform(90) + 10;
        _question = [NSString stringWithFormat:@"%lu + %lu = ?", r1, r2];
        _answer = r1 + r2;
        _startTime = [NSDate date];
        _rightValue = arc4random();
        _leftValue = arc4random();
    }
    return self;
}

- (NSUInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    NSTimeInterval result = [_endTime timeIntervalSinceDate:_startTime];
    return result;
}

- (void)generateQuestion {
    
}

@end
