//
//  SubAppLibrary.m
//  SubAppLibrary
//
//  Created by Ransika De Silva on 9/13/17.
//  Copyright © 2017 Visni (Pvt) Ltd. All rights reserved.
//

#import "SubAppLibrary.h"
#import "SubAppInitialScreen.h"

@implementation SubAppLibrary


-(NSString *)showStatusForLibrary{
    
    NSLog(@"showStatusForLibrary: Test");
    
    return @"showStatusForLibrary: Test: Returned";
    
}


-(void)showSubLibraryAppInitialScreen:(UIViewController *)vc{

    [self showStatusForLibrary];
    
    NSBundle * bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"teststoryboard" withExtension:@"bundle"]];
    [bundle load];
    NSLog(@"showSubLibraryAppInitialScreen1: %@",bundle.bundlePath);
    
    UIStoryboard * libStoryBoard = [UIStoryboard storyboardWithName:@"SubAppStoryboard" bundle:bundle];

//
    
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"SubAppStoryboardBundle.bundle/SubAppStoryboard" bundle:nil];
    SubAppInitialScreen *subAppInitialScreen = (SubAppInitialScreen *)[libStoryBoard instantiateViewControllerWithIdentifier:@"SubAppInitialScreen"];
    
    
//    SubAppInitialScreen * subAppInitialScreen = [libStoryBoard instantiateViewControllerWithIdentifier:@"SubAppInitialScreen"];
    
    NSLog(@"showSubLibraryAppInitialScreen2: %@",subAppInitialScreen);
    
    [vc presentViewController:subAppInitialScreen animated:YES completion:NULL];
//    [navigationController pushViewController:subAppInitialScreen animated:YES];

}


@end
