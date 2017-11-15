
//
//  loginProcess.m
//  bydF
//
//  Created by shawn on 2017/11/15.
//  Copyright © 2017年 com.mackun. All rights reserved.
//

#import "loginProcess.h"
#import "LoginViewController.h"
#import "LgoinInputViewController.h"

@implementation loginProcess

+ (void)load{
    JLRoutes *loginProcess = [JLRoutes routesForScheme:@"loginProcess"];
    
    //跳转到loginVC
    [loginProcess addRoute:@"/loginVC" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
        id VC = parameters[@"VC"];
        LoginViewController *loginVC = [[LoginViewController alloc] init];
        if ([VC isKindOfClass:[UIWindow class]]) {
            UIWindow *mainW = (UIWindow *)VC;
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            [nav.navigationBar setCustomStyle];
            mainW.rootViewController = nav;
            return YES;
        } else if ([VC isKindOfClass:[UIViewController class]]){
            UIViewController *fromVC = (UIViewController *)VC;
            [fromVC.navigationController pushViewController:loginVC animated:YES];
            return YES;
        }
        return NO;
    }];
    
    
      //跳转到loginInputVC
    [loginProcess addRoute:@"/loginInputVC" handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
       id VC = parameters[@"VC"];
        LgoinInputViewController *inputVC = [[LgoinInputViewController alloc] init];
        if ([VC isKindOfClass:[UIViewController class]]) {
            UIViewController *fromVC = (UIViewController *)VC;
            [fromVC.navigationController pushViewController:inputVC animated:YES];
            return YES;
        }
        return NO;
    }];
    
    
}

@end
