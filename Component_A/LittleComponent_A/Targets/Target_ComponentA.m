//
//  Target_ComponentA.m
//  Component_A
//
//  Created by Zhaoyun Wang on 2018/3/31.
//  Copyright © 2018年 Zhaoyun Wang. All rights reserved.
//

#import "Target_ComponentA.h"
#import "AViewController.h"

@implementation Target_ComponentA

-(UIViewController *)Action_viewController{
    AViewController *av = [[AViewController alloc] init];
    return av;
}

@end
