//
//  RootCtlr.m
//  
//
//  Created by 杨朋亮 on 14-9-10.
//  Copyright (c) 2014年 cc. All rights reserved.
//

#import "RootCtlr.h"

#define degreesToRadians(x) (M_PI*(x)/180.0)

@interface RootCtlr ()
{
    
}

@end

@implementation RootCtlr

@synthesize presentingViewController = _presentingViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"RootCtlr" bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    if (UIInterfaceOrientationIsLandscape(orientation)) {
        NSLog(@"横向");
        self.view = self.landscape;
    }else{
        NSLog(@"纵向");
        self.view = self.portrait;
    }
	
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	
}

- (void)dealloc
{
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return YES;
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    if (toInterfaceOrientation == UIInterfaceOrientationPortrait) {
        self.view = self.portrait;
        NSLog(@"UIInterfaceOrientationPortrait");
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0));
        self.view.frame = CGRectMake(0.0, 0.0, 768.0, 1024.0);
    }else if(toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
        self.view = self.landscape;
        NSLog(@"UIInterfaceOrientationLandscapeLeft");
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(-90));
        self.view.frame = CGRectMake(0.0, 0.0, 768.0, 1024.0);
    } else if(toInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        self.view = self.landscape;
        NSLog(@"UIInterfaceOrientationLandscapeRight");
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(90));
        self.view.frame = CGRectMake(0.0, 0.0, 768, 1024.0);
    }else if(toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown){
        self.view = self.portrait;
        NSLog(@"UIInterfaceOrientationPortraitUpsideDown");
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(180));
        self.view.frame = CGRectMake(0.0, 0.0, 768.0, 1024.0);
    }
}

@end
