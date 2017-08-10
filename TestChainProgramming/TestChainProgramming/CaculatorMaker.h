//
//  CaculatorMaker.h
//  TestProj
//
//  Created by dqf on 2017/8/10.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Caculator.h"

@interface CaculatorMaker : NSObject

@property (nonatomic, assign) int result;

- (CaculatorMaker *(^)(int))add;

@end
