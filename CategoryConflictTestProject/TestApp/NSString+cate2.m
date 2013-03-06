//
//  NSString+cate2.m
//  TestApp
//
//  Created by Jianjun Wu on 3/6/13.
//  Copyright (c) 2013 Douban Inc. All rights reserved.
//

#import "NSString+cate2.h"

@implementation NSString (cate2)

- (void)test {
  
  NSLog(@"test in cate2");
}

- (void)testInCate2 {
  
  NSLog(@"testInCate2 in cate2");

  [self test];
}

@end
