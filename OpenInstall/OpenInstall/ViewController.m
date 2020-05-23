//
//  ViewController.m
//  OpenInstall
//
//  Created by hugengya on 2020/5/20.
//  Copyright © 2020 com.hefeichenye. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"OpenInstall";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
    
//    UIButton* installBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//    installBtn.tag = 0;
//    installBtn.frame =  CGRectMake(0, 0,KCurrWidth , (KCurrHeight-64)/3);
//    [installBtn setBackgroundImage:[UIImage imageNamed:@"install"] forState:UIControlStateNormal];
//    [installBtn addTarget:self action:@selector(gotoVC:) forControlEvents:UIControlEventTouchUpInside];
//
//    UIButton* channelBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//    channelBtn.tag = 1;
//    channelBtn.frame = CGRectMake(0, (KCurrHeight-64)/3,KCurrWidth , (KCurrHeight-64)/3);
//    [channelBtn setBackgroundImage:[UIImage imageNamed:@"channel"] forState:UIControlStateNormal];
//    [channelBtn addTarget:self action:@selector(gotoVC:) forControlEvents:UIControlEventTouchUpInside];
//
//    UIButton* wakeUpBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//    wakeUpBtn.tag = 2;
//    wakeUpBtn.frame = CGRectMake(0,  (KCurrHeight-64)/1.5,KCurrWidth , (KCurrHeight-64)/3);
//    [wakeUpBtn setBackgroundImage:[UIImage imageNamed:@"skip"] forState:UIControlStateNormal];
//    [wakeUpBtn addTarget:self action:@selector(gotoVC:) forControlEvents:UIControlEventTouchUpInside];
//
//    [self.view addSubview:wakeUpBtn];
//    [self.view addSubview:channelBtn];
//    [self.view addSubview:installBtn];

}


@end
