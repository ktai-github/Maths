//
//  main.m
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandling.h"

//static void extracted(NSCharacterSet **charSet, NSString **inputString) {
//  char inputChars[255];
//
//  printf("Input: ");
//  fgets(inputChars, 255, stdin);
//
//  *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
//
//  *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//
//  *inputString = [*inputString stringByTrimmingCharactersInSet:*charSet];
//  NSLog(@"%@", *inputString);
//}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    BOOL gameOn = YES;
    while (gameOn) {
//      const char * inputChars;
      
      NSCharacterSet * charSet;
      charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];

      NSString * inputString = [InputHandling InputHandler];
//      extracted(&charSet, &inputString);
      
      if ([inputString isEqualToString:@"quit"]) {
        gameOn = NO;
        break;
      } else {
      AdditionQuestion *addQ = [[AdditionQuestion alloc] init];
      NSLog(@"%@", [addQ question]);
      char userAnswer[255];
      fgets(userAnswer, 255, stdin);
      NSString *userAnswerString = [NSString stringWithCString:userAnswer encoding:NSUTF8StringEncoding];
      userAnswerString = [userAnswerString stringByTrimmingCharactersInSet:charSet];
      NSInteger userAnswerInt = [userAnswerString integerValue];
      NSInteger rightAnswer = [addQ answer];
      if (userAnswerInt == rightAnswer) {
        NSLog(@"Right!");
      } else {
        NSLog(@"Wrong!");
      }
      }
    }
  }
  return 0;
}
