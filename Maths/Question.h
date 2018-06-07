//
//  AdditionQuestion.h
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-05.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic) NSUInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (assign) int rightValue;
@property (assign) int leftValue;

- (NSTimeInterval)answerTime;
- (void)generateQuestion;
@end
