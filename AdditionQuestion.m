//
//  AdditionQuestion.m
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
  if (self = [super init]) {
    int num1 = arc4random_uniform(9);
    int num2 = arc4random_uniform(9);
    
//    NSString *question =
    _question = [NSString stringWithFormat:@"%i + %i", num1, num2 ];
    int sum = num1 + num2;
    _answer = sum;
  }
  return self;
}

- (instancetype)generateRandomQuestion: (int) firstNum secondNumber: (int) secondNum {
  return 0;
}
@end
