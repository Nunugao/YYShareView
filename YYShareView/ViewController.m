//
//  ViewController.m
//  YYShareView
//
//  Created by manager on 16/11/18.
//  Copyright © 2016年 Rockontrol. All rights reserved.
//

#import "ViewController.h"
#import "YYShareView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   

}
- (IBAction)clickButton:(id)sender {
    YYShareView * share = [YYShareView creatXib];
    [share setGetTouch:^(int tag)
     {
         [self getTag:tag];
     }];
    [share show];
}
-(void)getTag:(int)tag {
    if (tag == 1) {
        NSLog(@"我是来测试的....");
//        NewViewController *vc = [NewViewController new];
//        [self presentViewController:vc animated:YES completion:nil];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
