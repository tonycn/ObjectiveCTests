//
//  ViewController.m
//  StaticLibDuplicatedSymbol
//
//  Created by Jianjun Wu on 3/7/13.
//  Copyright (c) 2013 Douban Inc. All rights reserved.
//

#import "ViewController.h"
#import "JSONKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  
  NSLog(@"jsong string : %@", [@{@"a" : @1} JSONString]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
