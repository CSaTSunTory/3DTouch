//
//  DetailViewController.m
//  3DTouch
//
//  Created by CSaT_SunTony on 16/5/9.
//  Copyright © 2016年 李新波. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
{
        NSArray *arrayPreviewActions;
}
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arrayPreviewActions = @[
                            [UIPreviewAction actionWithTitle:@"button1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                NSLog(@"button1 selected");
                            }],
                            [UIPreviewAction actionWithTitle:@"button2" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                NSLog(@"button2 selected");
                            }]
                            ];
    // Do any additional setup after loading the view from its nib.
}
-(NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    return arrayPreviewActions;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];

}
@end
