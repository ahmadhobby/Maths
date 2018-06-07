//
//  QuestionManager.h
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-06.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;


-(NSString *)timeOutput;

@end
