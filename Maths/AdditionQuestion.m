//
//  AdditionQuestion.m
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-05.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    
    if (self = [super init]) {
        NSUInteger r1 = arc4random_uniform(90) + 10;
        NSUInteger r2 = arc4random_uniform(90) + 10;
        _question = [NSString stringWithFormat:@"%lu + %lu = ?", r1, r2];
        _answer = r1 + r2;
    }
    return self;
}

@end
