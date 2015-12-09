//
//  ImageDownLoader.h
//  PlayTest
//
//  Created by 张波 on 15/12/4.
//  Copyright © 2015年 张波. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ImageDownLoader;

@protocol ImageDownloaderDelegate <NSObject>

- (void)imageDownLoader:(ImageDownLoader *)loader;

@end



@interface ImageDownLoader : NSObject

@property(nonatomic,copy)NSString *urlString;
@property(nonatomic,assign)id <ImageDownloaderDelegate>delegate;

//给一个 Url字符串一个下载器,下载URL对应的图片
- (instancetype)initWithURLString:(NSString *)urlStr delegate:(id<ImageDownloaderDelegate>)delegate;
//开始下载
- (void)startDownload;

@end
