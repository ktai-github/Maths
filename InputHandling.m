//
//  InputHandling.m
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "InputHandling.h"

@implementation InputHandling

//(NSCharacterSet *) charSet : (char[255]) inputChars
+ (NSString *) InputHandler {
  char inputChars[255];
  NSCharacterSet *charSet;
  printf("Input: ");
  fgets(inputChars, 255, stdin);
  
  NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
  
  charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
  
  inputString = [inputString stringByTrimmingCharactersInSet:charSet];
  NSLog(@"%@", inputString);
  return inputString;
}
@end
