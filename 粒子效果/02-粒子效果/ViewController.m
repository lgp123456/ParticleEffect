//
//  ViewController.m
//  02-粒子效果
//
//  Created by apple on 16/8/25.
//  Copyright © 2016年 Sunfei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)CAEmitterLayer *emitLayer;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CAEmitterLayer *emLayer =[[CAEmitterLayer alloc] init];
    
    
    
    
emLayer.emitterPosition = self.view.center;
    [self.view.layer addSublayer:emLayer];
    
    
    //设置粒子发射器的属性
    
    //每秒钟发射的数量
    emLayer.birthRate = 2;
    
    
    //设置发射的样式
    emLayer.renderMode =kCAEmitterLayerAdditive;
    
    /*
     CA_EXTERN NSString * const kCAEmitterLayerUnordered
     __OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_5_0);
     CA_EXTERN NSString * const kCAEmitterLayerOldestFirst
     __OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_5_0);
     CA_EXTERN NSString * const kCAEmitterLayerOldestLast
     __OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_5_0);
     CA_EXTERN NSString * const kCAEmitterLayerBackToFront
     __OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_5_0);
     CA_EXTERN NSString * const kCAEmitterLayerAdditive
     **/
    
    
    //初始化要发射的cell
    CAEmitterCell *cell = [[CAEmitterCell alloc] init];
    
    //设置粒子的内容
    cell.contents = (id)[UIImage imageNamed:@"星星"].CGImage;
    
    
    //设置cell的属性
    //cell的出生量
    cell.birthRate = 2;
    
    //cell的存活时间
    cell.lifetime = 3;
    cell.lifetimeRange = 3;
    
    //设置粒子的发送速度
    cell.velocity = 50;
    cell.velocityRange = 30;
    
    //设置粒子的发送方向
    cell.emissionLatitude  = 90*M_PI/180;
    
    
    //设置加速度
    cell.yAcceleration = -100;
    
    
    //    散发粒子的范围  ->  弧度
    cell.emissionRange = 180*M_PI/180;
    
    emLayer.emitterCells = @[cell];
    
    
    CAEmitterCell *cell2 = [CAEmitterCell emitterCell];
    cell2.contents = (id)[UIImage imageNamed:@"点"].CGImage;
    //    粒子的出生量
    cell2.birthRate = 4;
    //    存活时间
    cell2.lifetime = 3;
    cell2.lifetimeRange = 1;
    //    设置粒子发送速度
    cell2.velocity = 80;
    cell2.velocityRange = 50;
    //    粒子发送的方向
    cell2.emissionLatitude = 90*M_PI/180;
    //    发送粒子的加速度
    cell2.yAcceleration = -100;
    
    //    散发粒子的范围  ->  弧度
    cell2.emissionRange = 180*M_PI/180;
    
    //把粒子的cell添加到粒子发送器
    //重新设置cell的emitterCells
    emLayer.emitterCells = @[cell,cell2];
    
    
    
    self.view.backgroundColor =[UIColor blackColor];
}
@end
