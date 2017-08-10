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
    NSLog(@"%@",NSString.add(@"hello").add(@",world"));
    NSLog(@"%@",NSString.add(@"hello").add(@(111)));
    

    NSLog(@"%@",NSMutableString.add(@"hello").add(@",world"));
    NSLog(@"%@",NSMutableString.add(@"hello").add(@(111)));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
