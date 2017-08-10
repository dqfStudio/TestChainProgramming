//
//  NSObject+Caculator.m
//  TestProj
//
//  Created by dqf on 2017/8/10.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "NSObject+Caculator.h"
#import "CaculatorMaker.h"

@implementation NSObject (Caculator)

+ (int)makeCaculators:(void(^)(CaculatorMaker *make))caculatorMaker {
    CaculatorMaker *mgr =[[CaculatorMaker alloc] init];
    caculatorMaker(mgr);
    return mgr.result;
}

@end
