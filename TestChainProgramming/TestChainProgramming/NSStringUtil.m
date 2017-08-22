//
//  NSStringUtil.m
//  TestProj
//
//  Created by dqf on 2017/8/10.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "NSStringUtil.h"

@implementation NSString (Util)

+ (NSString *(^)(id))append {
    return ^NSString *(id obj) {
        return [NSString stringWithFormat:@"%@",obj];
    };
}

- (NSString *(^)(id))append {
    return ^NSString *(id obj) {
        return [NSString stringWithFormat:@"%@%@", self,obj];
    };
}

+ (NSString *(^)(NSString *, NSUInteger))appendCount {
    return ^NSString *(NSString *org, NSUInteger count) {
        NSMutableString *mutableStr = [[NSMutableString alloc] init];
        for (int i=0; i<count; i++) {
            [mutableStr appendString:org];
        }
        return mutableStr;
    };
}

- (NSString *(^)(NSString *, NSUInteger))appendCount {
    return ^NSString *(NSString *org, NSUInteger count) {
        NSMutableString *mutableStr = [[NSMutableString alloc] initWithString:self];
        for (int i=0; i<count; i++) {
            [mutableStr appendString:org];
        }
        return mutableStr;
    };
}

- (NSString *(^)(NSString *, NSString *))replace {
    return ^NSString *(NSString *org1, NSString *org2) {
        return [self stringByReplacingOccurrencesOfString:org1 withString:org2];
    };
}

//空格
+ (NSString *(^)(NSUInteger))space {
    return ^NSString *(NSUInteger count) {
        return self.appendCount(@" ", count);
    };
}

- (NSString *(^)(NSUInteger))space {
    return ^NSString *(NSUInteger count) {
        return self.appendCount(@" ", count);
    };
}

//tab
+ (NSString *(^)(NSUInteger))tab {
    return ^NSString *(NSUInteger count) {
        return self.appendCount(@"\t", count);
    };
}

- (NSString *(^)(NSUInteger))tab {
    return ^NSString *(NSUInteger count) {
        return self.appendCount(@"\t", count);
    };
}

//换行
+ (NSString *(^)(NSUInteger))wrap {
    return ^NSString *(NSUInteger count) {
        return self.appendCount(@"\n", count);
    };
}

- (NSString *(^)(NSUInteger))wrap {
    return ^NSString *(NSUInteger count) {
        return self.appendCount(@"\n", count);
    };
}

- (NSString *(^)(NSString *))subStringToStart {
    return ^NSString *(NSString * aString) {
        NSRange range = [self rangeOfString:aString];
        return [self substringToIndex:range.location];
    };
}

- (NSString *(^)(NSString *))subStringToEnd {
    return ^NSString *(NSString * aString) {
        NSRange range = [self rangeOfString:aString];
        return [self substringToIndex:range.location+range.length];
    };
}

- (NSString *(^)(NSString *))subStringFromStart {
    return ^NSString *(NSString * aString) {
        NSRange range = [self rangeOfString:aString];
        return [self substringFromIndex:range.location];
    };
}

- (NSString *(^)(NSString *))subStringFromEnd {
    return ^NSString *(NSString * aString) {
        NSRange range = [self rangeOfString:aString];
        return [self substringFromIndex:range.location+range.length];
    };
}

@end
