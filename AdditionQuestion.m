//
//  AdditionQuestion.m
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "AdditionQuestion.h"

@interface AdditionQuestion ()

@end



@implementation AdditionQuestion

- (instancetype)init {
  if (self = [super init]) {
    int num1 = arc4random_uniform(9);
    int num2 = arc4random_uniform(9);
    
    
    _question = [NSString stringWithFormat:@"%i + %i", num1, num2 ];
    _answer = num1 + num2;
    
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

- (NSTimeInterval) answerTime {
//  NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//      [dateFormatter setDateFormat:@"s"];
//      NSLog(@"%@", [dateFormatter stringFromDate:self.startTime]);
  
  NSTimeInterval intervalTimeToAnswer = [self.endTime timeIntervalSinceDate:self.startTime];
  return round(intervalTimeToAnswer);
}


//- (void)generateQuestion: (int) firstNum secondNumber: (int) secondNum {
//}
@end
