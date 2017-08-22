//
//  NSStringUtil.h
//  TestProj
//
//  Created by dqf on 2017/8/10.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Util)

+ (NSString *(^)(id))append;
- (NSString *(^)(id))append;

+ (NSString *(^)(NSString *, NSUInteger))appendCount;
- (NSString *(^)(NSString *, NSUInteger))appendCount;

- (NSString *(^)(NSString *, NSString *))replace;

+ (NSString *(^)(NSUInteger))space;
- (NSString *(^)(NSUInteger))space;

+ (NSString *(^)(NSUInteger))tab;
- (NSString *(^)(NSUInteger))tab;

+ (NSString *(^)(NSUInteger))wrap;
- (NSString *(^)(NSUInteger))wrap;

- (NSString *(^)(NSString *))subStringToStart;
- (NSString *(^)(NSString *))subStringToEnd;

- (NSString *(^)(NSString *))subStringFromStart;
- (NSString *(^)(NSString *))subStringFromEnd;

@end
