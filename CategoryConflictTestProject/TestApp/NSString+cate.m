//
//  NSString+cate.m
//  TestApp
//
//  Created by Jianjun Wu on 3/6/13.
//  Copyright (c) 2013 Douban Inc. All rights reserved.
//

#import "NSString+cate.h"

@implementation NSString (cate)

- (void)test {
  
  NSLog(@"test in cate");
}

- (void)testInCate {
  
  NSLog(@"testInCate in cate");
  [self test];
}

@end
