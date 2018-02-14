//
//  ScoreKeeper.h
//  Maths
//
//  Created by KevinT on 2018-02-13.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int right;
@property int wrong;

- (NSString *)score:(int)right Wrong:(int)wrong;
@end
