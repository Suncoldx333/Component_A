//
//  AViewController.m
//  MainProject
//
//  Created by Zhaoyun Wang on 2018/3/29.
//  Copyright © 2018年 Zhaoyun Wang. All rights reserved.
//

#import "AViewController.h"
#import <CTMediator+ComponentB.h>

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initUI{
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGSize screen = [UIScreen mainScreen].bounds.size;
    UIButton *jumpBt = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    jumpBt.center = CGPointMake(screen.width/2, screen.height/2);
    [jumpBt setTitle:@"JumpB" forState:UIControlStateNormal];
    [jumpBt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [jumpBt addTarget:self action:@selector(jumpNext) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jumpBt];
}

-(void)jumpNext{
    
    UIViewController *bv = [[CTMediator sharedInstance] B_ViewController];
    [self.navigationController pushViewController:bv animated:YES];
    
}

@end
