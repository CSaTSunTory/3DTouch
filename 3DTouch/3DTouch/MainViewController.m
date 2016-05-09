//
//  MainViewController.m
//  3DTouch
//
//  Created by CSaT_SunTony on 16/5/9.
//  Copyright © 2016年 李新波. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"
@interface MainViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable){
        [self registerForPreviewingWithDelegate:self sourceView:self.view];
    }else{
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"3DTouch not available" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
    }
    // Do any additional setup after loading the view from its nib.
}
#pragma mark - Previewing delegate

- (UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    DetailViewController *detailVC = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    
    detailVC.preferredContentSize = CGSizeMake(0.0, 300.0);
    
    previewingContext.sourceRect = self.btn.frame;
    
    return detailVC;
}

- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    [self showViewController:viewControllerToCommit sender:self];
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

- (IBAction)btnAction:(UIButton *)sender {
        DetailViewController *detailVC = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    [self presentViewController:detailVC animated:YES completion:nil];
}
@end
