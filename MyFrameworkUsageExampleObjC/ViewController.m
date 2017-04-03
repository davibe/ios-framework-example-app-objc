//
//  ViewController.m
//  MyFrameworkUsageExampleObjC
//
//  Created by Davide Bertola on 03/04/2017.
//  Copyright © 2017 Davide Bertola. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.framework = [[MyFramework alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
