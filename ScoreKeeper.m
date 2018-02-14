//
//  ScoreKeeper.m
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *)score:(int)right Wrong:(int)wrong {
  float rightFloat = (float)right;
  float wrongFloat = (float)wrong;
  float scorePercent = (rightFloat/(rightFloat + wrongFloat))*100;
  NSLog(@"score: %i right, %i wrong ---- %.2f%%", right, wrong, scorePercent);
  NSString *rightString = [NSString stringWithFormat:@"%i right, ",right];
  NSString *wrongString = [NSString stringWithFormat:@"%i wrong ---- ",wrong];
  NSString *scorePercentString = [NSString stringWithFormat:@"%f%% ",scorePercent];
  
  NSString *scoreMessage = [NSString stringWithFormat:@"%@ %@ %@", rightString, wrongString, scorePercentString];
  return scoreMessage;
}


@end
