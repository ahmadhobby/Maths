//
//  ScoreKeeper.m
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-05.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *)scoreResult {
    double percentage = (self.rightCounter  * 100) / (self.rightCounter + self.wrongCounter);
    NSString *score = [NSString stringWithFormat: @"score: right : %i, wrong : %i, %.2f", self.rightCounter, self.wrongCounter, percentage];
    return score;
}

@end
