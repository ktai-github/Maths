//
//  main.m
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    while (TRUE) {
//      const char * inputChars;
      char inputChars[255];
      
      printf("Input: ");
      fgets(inputChars, 255, stdin);
      
      NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
      
      NSCharacterSet *charSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
      
      inputString = [inputString stringByTrimmingCharactersInSet:charSet];
      NSLog(@"%@", inputString);
    }
  }
  return 0;
}
