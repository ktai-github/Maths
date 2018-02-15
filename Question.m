//
//  Question.m
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "Question.h"

@interface Question ()

@end



@implementation Question

- (instancetype)init {
  if (self = [super init]) {
//    int num1 = arc4random_uniform(9);
//    int num2 = arc4random_uniform(9);
    self.leftValue = arc4random_uniform(9);
    self.rightValue = arc4random_uniform(9);
    
//    self.question = [NSString stringWithFormat:@"%i + %i", self.leftValue, self.rightValue];
//    self.answer = self.leftValue + self.rightValue;
    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"s"];
//    NSLog(@"%@", [dateFormatter stringFromDate:[NSDate date]]);
    self.startTime = [NSDate date];
  }
  return self;
}

//defining getter
- (NSInteger)answer {
  _endTime = [NSDate date];
  return _answer;
}

- (NSTimeInterval) timeToAnswer {
//  NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//      [dateFormatter setDateFormat:@"s"];
//      NSLog(@"%@", [dateFormatter stringFromDate:self.startTime]);
  
  NSTimeInterval intervalTimeToAnswer = [self.endTime timeIntervalSinceDate:self.startTime];
  return round(intervalTimeToAnswer);
}


- (void) generateQuestion {
  
}
@end
