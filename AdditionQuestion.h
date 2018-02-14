//
//  AdditionQuestion.h
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString *question;
@property (nonatomic) NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;

- (NSTimeInterval) answerTime;

@end
