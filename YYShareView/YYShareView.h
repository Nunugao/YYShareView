//
//  YYShareView.h
//  YYShareView
//
//  Created by manager on 16/11/18.
//  Copyright © 2016年 Rockontrol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYShareView : UIView
@property (strong,nonatomic)void (^getTouch)(int ButTag);
@property (weak, nonatomic) IBOutlet UIView *ShareView;

+(instancetype)creatXib;
-(void)show;
-(void)close;

@end
