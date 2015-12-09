//
//  ImageDownLoader.m
//  PlayTest
//
//  Created by 张波 on 15/12/4.
//  Copyright © 2015年 张波. All rights reserved.
//

#import "ImageDownLoader.h"

@implementation ImageDownLoader


- (instancetype)initWithURLString:(NSString *)urlStr delegate:(id<ImageDownloaderDelegate>)delegate
{
    self = [super init];
    if (self) {
        self.urlString = urlStr;
        self.delegate = delegate;
        [self startDownload];
    }
    return self;
}
- (void)startDownload
{
    
}



@end
