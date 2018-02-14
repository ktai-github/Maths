//
//  QuestionManager.h
//  Maths
//
//  Created by KevinT on 2018-02-14.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray *questions;

- (NSString *) timeOutput:(AdditionQuestion *)addQ;

@end
