//
//  AppModel.m
//  异步下载图片
//
//  Created by  郭航 on 16/4/7.
//  Copyright © 2016年  郭航. All rights reserved.
//

#import "GHAppModel.h"

@implementation GHAppModel

/**
 *  自定义构造方法
 *
 *  @param dic 要转成模型的字典
 *
 *  @return 模型
 */
-(instancetype)initWithDictionary:(NSDictionary *)dic{
    if (self=[super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
/**
 *   类方法
 *
 *  @param dic 要转成模型的字典
 *
 *  @return 实例化模型
 */
+(instancetype)appModelWithDictionary:(NSDictionary *)dic{
    return [[self alloc]initWithDictionary:dic];
}
/**
 *  类方法
 *
 *  @param path 要转成模型的文件路径
 *
 *  @return 由对象组成的模型
 */
+(NSArray *)appModelWithFilePath:(NSString *)path{
    NSArray *arrF=[NSArray arrayWithContentsOfFile:path];
    NSMutableArray *arrM=[NSMutableArray array];
    for (NSDictionary *dic in arrF) {
        [arrM addObject:[[self alloc]initWithDictionary:dic]];
    }
    return arrM;
}

@end
