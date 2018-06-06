//
//  ScoreKeeper.h
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-05.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (assign, nonatomic) int rightCounter;
@property (assign, nonatomic) int wrongCounter;

- (NSString *)scoreResult;

@end
