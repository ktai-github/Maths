//
//  QuestionFactory.m
//  Maths
//
//  Created by KevinT on 2018-02-14.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (Question *) generateRandomQuestion {
  return 0;
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    
    int selectedQuestionType = arc4random_uniform(4);
//    if (selectedQuestionType > 2) {
//      selectedQuestionType = 3;
//    }
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    NSString *selectedQuestionClass = [questionSubclassNames objectAtIndex:selectedQuestionType];
    return [[NSClassFromString(selectedQuestionClass) alloc] init];
  }
  return self;
}

@end
