//
//  LgoinInputViewController.m
//  bydF
//
//  Created by shawn on 2017/11/15.
//  Copyright © 2017年 com.mackun. All rights reserved.
//

#import "LgoinInputViewController.h"
#import "ResetPswViewController.h"

@interface LgoinInputViewController ()

@property (weak, nonatomic) IBOutlet UIView *mobileBg;

@property (weak, nonatomic) IBOutlet UIView *passBg;

@property (weak, nonatomic) IBOutlet UITextSwitch *customSW;

@property (weak, nonatomic) IBOutlet UITextField *mobileTF;

@property (weak, nonatomic) IBOutlet UITextField *passwTF;


@property (weak, nonatomic) IBOutlet UIImageView *mobileP;
@property (weak, nonatomic) IBOutlet UIImageView *keyP;


@end

@implementation LgoinInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUI];
    
    
    
//    self.view.layer.borderWidth
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)setUI{
    self.title = @"账号密码登录";
    self.mobileBg.layer.borderWidth = 1.f;
    self.passBg.layer.borderWidth = 1.f;
    self.mobileBg.layer.borderColor = [UIColor appSecondLineColor].CGColor;
    self.passBg.layer.borderColor = [UIColor appSecondLineColor].CGColor;
    
    self.mobileTF.tintColor = [UIColor mainColor];
    self.passwTF.tintColor = [UIColor mainColor];
    WEAKSELF
    [self.customSW addTapGestureRecognizer:^(UITapGestureRecognizer *recognizer, NSString *gestureId) {
        [weakSelf.customSW setOn:!weakSelf.customSW.isOn animated:YES];
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark -----textField的协议方法-------
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSDictionary *attrsDictionary =@{
                                     NSKernAttributeName:[NSNumber numberWithFloat:2.0f]//这里修改字符间距
                                     };
    textField.attributedText=[[NSAttributedString alloc]initWithString:textField.text attributes:attrsDictionary];
    
    if ([textField isEqual:_mobileTF]) {
            //图片变化
        _mobileP.image = _mobileTF.text.length >0?[UIImage imageNamed:@"LoginModule_mobile_y"]:[UIImage imageNamed:@"LoginModule_mobile_n"];
        if (range.location >=11) {
            textField.text = [textField.text substringToIndex:11];
            return NO;
        }
    } else if ([textField isEqual:_passwTF]) {
            //图片变化
          _keyP.image = _passwTF.text.length >0?[UIImage imageNamed:@"LoginModule_pass_y"]:[UIImage imageNamed:@"LoginModule_pass_n"];
        if (range.location >=6) {
            textField.text = [textField.text substringToIndex:6];
            return NO;
        }
    }
    return YES;
}


- (IBAction)resetPassword:(UIButton *)sender {
    ResetPswViewController *pass = [[ResetPswViewController alloc] init];
    [self.navigationController pushViewController:pass animated:YES];
    
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
