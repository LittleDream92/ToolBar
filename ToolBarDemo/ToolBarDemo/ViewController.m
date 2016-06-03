//
//  ViewController.m
//  ToolBarDemo
//
//  Created by Meng Fan on 16/6/3.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/* 
    toolbar 就是屏幕下方的工具栏
*/

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"显示工具栏";
    //显示工具栏
    [self.navigationController setToolbarHidden:NO];
    
    //设置toolbar的背景图片 参数 ：背景图，什么位置显示（），什么模式显示（横屏，竖屏）
//    [self.navigationController.toolbar setBackgroundImage:[UIImage imageNamed:@"1.png"] forToolbarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    
//    self.navigationController.toolbar.frame = CGRectMake(0, 0, 375, 44);
    
    //通过toolbaritems来设置工具栏的显示项，数组中是UIBarButtonItem的实例
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:nil];
    
    //item 的间隔，不会显示出来,会自动计算间隔
    UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    NSArray *items = [NSArray arrayWithObjects:spaceItem, item1,spaceItem,item2,spaceItem, nil];
    
    self.toolbarItems = items;
    
    //注意：用[self.navigationController.toolbar setItems:(NSArray *) animated:(BOOL)]这个方法添加item是不起效果的。
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
