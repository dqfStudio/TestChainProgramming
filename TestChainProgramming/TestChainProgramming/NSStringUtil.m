//
//  NSStringUtil.m
//  TestProj
//
//  Created by dqf on 2017/8/10.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "NSStringUtil.h"

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

@end
