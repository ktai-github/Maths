//
//  Multiplication Question.m
//  Maths
//
//  Created by KevinT on 2018-02-14.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
  self = [super init];
  if (self = [super init]) {
    [self generateQuestion];
  }
  return self;
}

- (void)generateQuestion {
  self.answer = self.leftValue * self.rightValue;
  self.question = [NSString stringWithFormat:@"%li x %li", (long)self.leftValue, (long)self.rightValue];
}

@end
