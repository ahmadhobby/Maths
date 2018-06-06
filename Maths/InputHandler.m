//
//  InputHandler.m
//  Maths
//
//  Created by Ahmad Hobby on 2018-06-05.
//  Copyright © 2018 Ahmad Hobby. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *)promptInput {
    char answerChars[254];

    fgets(answerChars, 254, stdin);
    strtok(answerChars, "\n");
    NSString *answerString = [NSString stringWithCString: answerChars encoding:NSUTF8StringEncoding];
    
    return answerString;
}

@end
