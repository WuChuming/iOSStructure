//
//  LoginViewController.m
//  bydF
//
//  Created by shawn on 2017/11/15.
//  Copyright © 2017年 com.mackun. All rights reserved.
//

#import "LoginViewController.h"
#import "LgoinInputViewController.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"不用等供应链";
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)LoginClick:(UIButton *)sender {
    
    LgoinInputViewController *inputVC = [[LgoinInputViewController alloc] init];
    if ([self isKindOfClass:[UIViewController class]]) {
//        UIViewController *fromVC = (UIViewController *)VC;
        [self.navigationController pushViewController:inputVC animated:YES];
        
    }
    
    
    
    
//    [[JLRoutes routesForScheme:@"loginProcess"] routeURLStr:@"/loginInputVC" withParameters:@{@"VC":self}];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
