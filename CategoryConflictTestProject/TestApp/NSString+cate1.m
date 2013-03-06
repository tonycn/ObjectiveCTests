//
//  NSString+cate1.m
//  TestApp
//
//  Created by Jianjun Wu on 3/6/13.
//  Copyright (c) 2013 Douban Inc. All rights reserved.
//

#import "NSString+cate1.h"

@implementation NSString (cate1)

- (void)test {
  
  NSLog(@"test in cate1");
}

- (void)testInCate1 {
  
  NSLog(@"testInCate1 in cate1");
  
  [self test];
}

@end
