//
//  ViewController.m
//  angerbird
//
//  Created by aiqing on 16/1/11.
//  Copyright © 2016年 aiqing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
}
- (IBAction)ActionSheetClick:(id)sender {
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle: @"弹出框"                                                                             message: @"弹出框测试效果"                                                                       preferredStyle:UIAlertControllerStyleActionSheet];
    //添加Button
    [alertController addAction: [UIAlertAction actionWithTitle: @"拍照" style: UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //处理点击拍照
        NSLog(@"点击了拍照");
    }]];
    [alertController addAction: [UIAlertAction actionWithTitle: @"重置" style: UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        //处理点击拍照
        NSLog(@"点击了重置");
    }]];
    [alertController addAction: [UIAlertAction actionWithTitle: @"从相册选取" style: UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        //处理点击从相册选取
        NSLog(@"点击了相册选照片");
    }]];
    [alertController addAction: [UIAlertAction actionWithTitle: @"取消" style: UIAlertActionStyleCancel handler:nil]];
    
    [self presentViewController: alertController animated: YES completion: nil];
}
- (IBAction)ActionAlertClick:(id)sender {
    
    
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle: @"登陆"
        message: @"输入用户名密码"
        preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"name";
        textField.textColor = [UIColor blueColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        textField.borderStyle = UITextBorderStyleRoundedRect;
    }];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"password";
        textField.textColor = [UIColor blueColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.secureTextEntry = YES;
    }];
    [alertController addAction:[UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSArray * textfields = alertController.textFields;
        UITextField * namefield = textfields[0];
        UITextField * passwordfiled = textfields[1];
        NSLog(@"%@:%@",namefield.text,passwordfiled.text);
        
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        NSLog(@"点击了取消的按钮");
        
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"COM" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        NSLog(@"点击了加强的按钮");
        
    }]];
  
    [self presentViewController:alertController animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
