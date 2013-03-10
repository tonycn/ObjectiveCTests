//
//  ViewController.m
//  NSArraySerializationTest
//
//  Created by Jianjun Wu on 3/10/13.
//  Copyright (c) 2013 Douban Inc. All rights reserved.
//

#import "ViewController.h"
#import "NSData+CocoaDevUsersAdditions.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)test1 {
  
  NSMutableArray * arr1 = [NSMutableArray arrayWithCapacity:1000];
  
  for (NSInteger i = 0; i < 1000; ++i) {
    NSArray * arr = @[[@"abc" stringByAppendingFormat:@"%d", i],
                      [@"fsdfjlsdfjiosd" stringByAppendingFormat:@"%d", i],
                      [@"fjosdjfosjdfoijsfoisdjfoidjsfo" stringByAppendingFormat:@"%d", i]
                      ];
    [arr1 addObject:arr];
  }
  
  NSString * path1 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test1.plist"];
  NSString * path2 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test2.plist"];
  
  BOOL succ1 = [arr1 writeToFile:path1 atomically:YES];
  
  NSData * data = [NSKeyedArchiver archivedDataWithRootObject:arr1];
  BOOL succ2 = [data writeToFile:path2 atomically:YES];
  
  NSLog(@"path1 %@ %d", path1, succ1);
  NSLog(@"path2 %@ %d", path2, succ2);
}

- (void)test2_archiveWithSampleObject {
  
  NSArray * arr = @[@"abc", @"fsdfjlsdfjiosd", @"fjosdjfosjdfoijsfoisdjfoidjsfo"];
  NSMutableArray * arr1 = [NSMutableArray arrayWithCapacity:1000];
  
  for (NSInteger i = 0; i < 1000; ++i) {
    [arr1 addObject:arr];
  }
  
  NSString * path1 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test2_1.plist"];
  NSString * path2 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test2_2.plist"];
  
  BOOL succ1 = [arr1 writeToFile:path1 atomically:YES];
  
  NSData * data = [NSKeyedArchiver archivedDataWithRootObject:arr1];
  BOOL succ2 = [data writeToFile:path2 atomically:YES];
  
  NSLog(@"path1 %@ %d", path1, succ1);
  NSLog(@"path2 %@ %d", path2, succ2);
  
}

- (void)test3_withArchiveAndGzip {
  
  NSMutableArray * arr1 = [NSMutableArray arrayWithCapacity:1000];
  
  for (NSInteger i = 0; i < 1000; ++i) {
    NSArray * arr = @[[@"abc" stringByAppendingFormat:@"%d", i],
                      [@"fsdfjlsdfjiosd" stringByAppendingFormat:@"%d", i],
                      [@"fjosdjfosjdfoijsfoisdjfoidjsfo" stringByAppendingFormat:@"%d", i]
                      ];
    [arr1 addObject:arr];
  }
  
  NSString * path1 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test3_1.plist"];
  NSString * path2 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test3_2.plist"];
  
  BOOL succ1 = [arr1 writeToFile:path1 atomically:YES];
  
  NSData * data = [[NSKeyedArchiver archivedDataWithRootObject:arr1] gzipDeflate];
  BOOL succ2 = [data writeToFile:path2 atomically:YES];
  
  NSLog(@"path1 %@ %d", path1, succ1);
  NSLog(@"path2 %@ %d", path2, succ2);
}

- (void)test4_withJSONAndGZip {
  
  NSMutableArray * arr1 = [NSMutableArray arrayWithCapacity:1000];
  
  for (NSInteger i = 0; i < 1000; ++i) {
    NSArray * arr = @[[@"abc" stringByAppendingFormat:@"%d", i],
                      [@"fsdfjlsdfjiosd" stringByAppendingFormat:@"%d", i],
                      [@"fjosdjfosjdfoijsfoisdjfoidjsfo" stringByAppendingFormat:@"%d", i]
                      ];
    [arr1 addObject:arr];
  }
  
  NSString * path1 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test4_1.plist"];
  NSString * path2 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test4_2.plist"];
  
  BOOL succ1 = [arr1 writeToFile:path1 atomically:YES];
  
  NSData * data = [[NSJSONSerialization dataWithJSONObject:arr1 options:0 error:nil] gzipDeflate];
  BOOL succ2 = [data writeToFile:path2 atomically:YES];
  
  NSLog(@"path1 %@ %d", path1, succ1);
  NSLog(@"path2 %@ %d", path2, succ2);
}

- (void)test5_withDifferentStringObjectButSameContent {
  
  NSMutableArray * arr1 = [NSMutableArray arrayWithCapacity:1000];
  
  for (NSInteger i = 0; i < 1000; ++i) {
    NSArray * arr = @[[@"abc" copy], [@"fsdfjlsdfjiosd" copy], [@"fjosdjfosjdfoijsfoisdjfoidjsfo" copy]];
    [arr1 addObject:arr];
  }
  
  NSString * path1 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test5_1.plist"];
  NSString * path2 = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
                       objectAtIndex:0] stringByAppendingPathComponent:@"test5_2.plist"];
  
  BOOL succ1 = [arr1 writeToFile:path1 atomically:YES];
  
  NSData * data = [NSKeyedArchiver archivedDataWithRootObject:arr1];
  BOOL succ2 = [data writeToFile:path2 atomically:YES];
  
  NSLog(@"path1 %@ %d", path1, succ1);
  NSLog(@"path2 %@ %d", path2, succ2);
}

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  [self test1];
  [self test2_archiveWithSampleObject];
  [self test3_withArchiveAndGzip];
  [self test4_withJSONAndGZip];
  [self test5_withDifferentStringObjectButSameContent];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
