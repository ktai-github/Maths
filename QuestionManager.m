//
//  QuestionManager.m
//  Maths
//
//  Created by KevinT on 2018-02-14.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
  self = [super init];
  if (self) {
    self.questions = [[NSMutableArray alloc]init];
  }
  return self;
}

- (NSString *) timeOutput:(AdditionQuestion *)addQ{

//  double totalTime = 0;
//  AdditionQuestion *addQ = [[AdditionQuestion alloc] init];
  double totalTime = 0;
  for (int i = 0; i < self.questions.count; i++) {
    addQ = [self.questions objectAtIndex:i];
    totalTime += addQ.answerTime;
  }
//  double averageTime = 0;
  double averageTime = 0;
  averageTime = totalTime / self.questions.count;
  
  NSString *totalTimeString = [NSString stringWithFormat:@"total time: %.2fs,", totalTime];
  NSString *averageTimeString = [NSString stringWithFormat:@"average time: %.2fs", averageTime];
  NSString *totalAndAverageTimeMessage = [NSString stringWithFormat:@"%@ %@",totalTimeString,averageTimeString];
  return totalAndAverageTimeMessage;
  
}

@end
