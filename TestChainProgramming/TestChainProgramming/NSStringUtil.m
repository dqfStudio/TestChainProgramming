//
//  NSStringUtil.m
//  TestProj
//
//  Created by dqf on 2017/8/10.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "NSStringUtil.h"

#define KMinValue     0
#define KMaxValue     100

@implementation NSString (Util)

+ (NSString *(^)(id))add {
    return ^NSString *(id obj) {
        return [NSString stringWithFormat:@"%@",obj];
    };
}

- (NSString *(^)(id))add {
    return ^NSString *(id obj) {
        return [NSString stringWithFormat:@"%@%@", self,obj];
    };
}

- (NSString *(^)(NSString *, NSString *))replace {
    return ^NSString *(NSString *org1,NSString *org2) {
        return [self stringByReplacingOccurrencesOfString:org1 withString:org2];
    };
}

//空格
+ (NSString *(^)(NSUInteger))space {
    return ^NSString *(NSUInteger count) {
        return [self appendString:@" " count:count];
    };
}

- (NSString *(^)(NSUInteger))space {
    return ^NSString *(NSUInteger count) {
        return [self appendString:@" " count:count];
    };
}

//tab
+ (NSString *(^)(NSUInteger))tab {
    return ^NSString *(NSUInteger count) {
        return [self appendString:@"\t" count:count];
    };
}

- (NSString *(^)(NSUInteger))tab {
    return ^NSString *(NSUInteger count) {
        return [self appendString:@"\t" count:count];
    };
}

//换行
+ (NSString *(^)(NSUInteger))wrap {
    return ^NSString *(NSUInteger count) {
        return [self appendString:@"\n" count:count];
    };
}

- (NSString *(^)(NSUInteger))wrap {
    return ^NSString *(NSUInteger count) {
        return [self appendString:@"\n" count:count];
    };
}

+ (NSString *)appendString:(NSString *)aString count:(NSUInteger)count {
    NSMutableString *mutableStr = [[NSMutableString alloc] initWithString:@""];
    for (int i=0; i<count; i++) {
        [mutableStr appendString:aString];
    }
    return mutableStr;
}

- (NSString *)appendString:(NSString *)aString count:(NSUInteger)count {
    NSMutableString *mutableStr = [[NSMutableString alloc] initWithString:self];
    for (int i=0; i<count; i++) {
        [mutableStr appendString:aString];
    }
    return mutableStr;
}

@end
