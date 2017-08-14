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
        NSString *selfStr = [NSString stringWithFormat:@"%@", self];
        if ([selfStr isEqualToString:@"NSString"] || [selfStr isEqualToString:@"NSMutableString"]) {
            return [NSString stringWithFormat:@"%@",obj];
        }else {
            return [NSString stringWithFormat:@"%@%@", selfStr,obj];
        }
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
        NSMutableString *mutableStr = [[NSMutableString alloc] initWithString:@""];
        if (count >=KMinValue && count <=KMaxValue) {
            NSString *str = @" ";
            for (int i=0; i<count; i++) {
                [mutableStr appendString:str];
            }
        }
        return mutableStr;
    };
}

- (NSString *(^)(NSUInteger))space {
    return ^NSString *(NSUInteger count) {
        NSMutableString *mutableStr = nil;
        NSString *selfStr = NSStringFromClass([self class]);
        
        if ([selfStr isEqualToString:@"NSMutableString"]) {
            mutableStr = (NSMutableString *)self;
        }else {
            mutableStr = [[NSMutableString alloc] initWithString:self];
        }
        
        if (count >=KMinValue && count <=KMaxValue) {
            NSString *str = @" ";
            for (int i=0; i<count; i++) {
                [mutableStr appendString:str];
            }
        }
        return mutableStr;
    };
}

//tab
+ (NSString *(^)(NSUInteger))tab {
    return ^NSString *(NSUInteger count) {
        NSMutableString *mutableStr = [[NSMutableString alloc] initWithString:@""];
        if (count >=KMinValue && count <=KMaxValue) {
            NSString *str = @"\t";
            for (int i=0; i<count; i++) {
                [mutableStr appendString:str];
            }
        }
        return mutableStr;
    };
}

- (NSString *(^)(NSUInteger))tab {
    return ^NSString *(NSUInteger count) {
        NSMutableString *mutableStr = nil;
        NSString *selfStr = NSStringFromClass([self class]);
        
        if ([selfStr isEqualToString:@"NSMutableString"]) {
            mutableStr = (NSMutableString *)self;
        }else {
            mutableStr = [[NSMutableString alloc] initWithString:self];
        }
        
        if (count >=KMinValue && count <=KMaxValue) {
            NSString *str = @"\t";
            for (int i=0; i<count; i++) {
                [mutableStr appendString:str];
            }
        }
        return mutableStr;
    };
}

//换行
+ (NSString *(^)(NSUInteger))wrap {
    return ^NSString *(NSUInteger count) {
        NSMutableString *mutableStr = [[NSMutableString alloc] initWithString:@""];
        if (count >=KMinValue && count <=KMaxValue) {
            NSString *str = @"\n";
            for (int i=0; i<count; i++) {
                [mutableStr appendString:str];
            }
        }
        return mutableStr;
    };
}

- (NSString *(^)(NSUInteger))wrap {
    return ^NSString *(NSUInteger count) {
        NSMutableString *mutableStr = nil;
        NSString *selfStr = NSStringFromClass([self class]);
        
        if ([selfStr isEqualToString:@"NSMutableString"]) {
            mutableStr = (NSMutableString *)self;
        }else {
            mutableStr = [[NSMutableString alloc] initWithString:self];
        }
        
        if (count >=KMinValue && count <=KMaxValue) {
            NSString *str = @"\n";
            for (int i=0; i<count; i++) {
                [mutableStr appendString:str];
            }
        }
        return mutableStr;
    };
}

@end
