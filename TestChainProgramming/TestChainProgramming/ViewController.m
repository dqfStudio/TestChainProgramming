//
//  ViewController.m
//  TestProj
//
//  Created by dqf on 2017/8/8.
//  Copyright © 2017年 dqfStudio. All rights reserved.
//

#import "ViewController.h"
#import "CaculatorMaker.h"
#import "NSStringUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //例子一
    [NSObject makeCaculators:^(CaculatorMaker *make) {
        NSLog(@"%d",make.add(1).add(2).result);
    }];
    
    int result = [NSObject makeCaculators:^(CaculatorMaker *make) {
        make.add(1).add(2);
    }];
    
    NSLog(@"%d",result);

    
    
    //例子二
    NSLog(@"%@",NSString.append(@"hello").append(@",world"));
    NSLog(@"%@",NSString.append(@"hello").append(@(111)));
    

    NSLog(@"%@",NSMutableString.append(@"hello").append(@",world"));
    NSLog(@"%@",NSMutableString.append(@"hello").append(@(111)));
    
    
    NSString *str = @"123".replace(@"1",@"2");
    NSLog(@"%@",str);
    
    
    NSMutableString *mutableStr = [[NSMutableString alloc] initWithString:@"111"];
    NSLog(@"%@",mutableStr.wrap(2).append(@"hello"));
 
    
    mutableStr.subStringToStart(@"111").subStringToStart(@">").subStringFromEnd(@"<");
    
    mutableStr
    .subStringToStart(@"111")
    .subStringToStart(@">")
    .subStringFromEnd(@"<");
    
    
    mutableStr.subStringToEnd(@"111");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
