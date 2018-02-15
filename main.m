//
//  main.m
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandling.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

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
    QuestionManager *qManager = [[QuestionManager alloc] init];
    
    BOOL gameOn = YES;
    int right = 0;
    int wrong = 0;
    ScoreKeeper *score = [[ScoreKeeper alloc] init];

    while (gameOn) {
      
      NSCharacterSet * charSet;
      charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];

      NSString * inputString = [InputHandling InputHandler];
      
      if ([inputString isEqualToString:@"quit"]) {
        
        gameOn = NO;
        break;
        
      } else {
        
        Question *addQ = [[Question alloc] init];
        [qManager.questions addObject:addQ];
        NSLog(@"%@", [addQ question]);
        
        char userAnswer[255];
        fgets(userAnswer, 255, stdin);
        
        NSString *userAnswerString = [NSString stringWithCString:userAnswer encoding:NSUTF8StringEncoding];
        userAnswerString = [userAnswerString stringByTrimmingCharactersInSet:charSet];
        NSInteger userAnswerInt = [userAnswerString integerValue];
        NSInteger rightAnswer = [addQ answer];
        
        if (userAnswerInt == rightAnswer) {
          NSLog(@"Right!");
          right++;
        
        } else {
          NSLog(@"Wrong!");
          wrong++;
        }
        
        NSString *totalAndAverageMessage = [qManager timeOutput];
        NSLog(@"%@", totalAndAverageMessage);
      }
      
      [score score:right Wrong:wrong];
    }
  }
  return 0;
}
