//
//  YYShareView.m
//  YYShareView
//
//  Created by manager on 16/11/18.
//  Copyright © 2016年 Rockontrol. All rights reserved.
//

#import "YYShareView.h"

@implementation YYShareView

-(void)awakeFromNib
{
    self.frame = [[UIScreen mainScreen] bounds];
    self.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.3];
    self.ShareView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, 200);
}

+(instancetype)creatXib
{
    return [[[NSBundle mainBundle]loadNibNamed:@"YYShareView" owner:nil options:nil]lastObject];
}

-(void)show
{
    [[UIApplication sharedApplication].keyWindow.rootViewController.view addSubview:self];
    [UIView animateWithDuration:0.3f animations:^{
        
        self.ShareView.frame = CGRectMake(0, self.frame.size.height - 200, self.frame.size.width, 200);
        
    } completion:^(BOOL finished) {
        
    }];
}

-(void)close
{
    [UIView animateWithDuration:0.3f animations:^{
        
        self.ShareView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, 200);
        
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (IBAction)YYCancel:(UIButton *)sender {
    [self close];
}
- (IBAction)touchBut:(UIButton *)sender {
    self.getTouch((int)sender.tag);
    [self close];
}

@end
