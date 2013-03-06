//
//  ViewController.m
//  TestApp
//
//  Created by Jianjun Wu on 3/6/13.
//  Copyright (c) 2013 Douban Inc. All rights reserved.
//

#import "ViewController.h"

#import "NSString+cate.h"
#import "NSString+cate1.h"
#import "NSString+cate2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  [@"" test];

  
  [@"" testInCate];
  [@"" testInCate1];
  [@"" testInCate2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
