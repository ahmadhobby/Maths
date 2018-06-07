//
//  QuestionFactory.h
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-06.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

-(Question *)generateRandomQuestion;

@end
