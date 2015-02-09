//
//  BasicMainViewController.m
//  BasicAtLang
//
//  Created by Ethan Westering on 2/3/15.
//  Copyright (c) 2015 EthanWestering. All rights reserved.
//

#import "BasicMainViewController.h"
#import "SocialMediaViewController.h"
#import "ScheduleViewController.h"
#import "BlogViewController.h"
#import "GetInvolvedViewController.h"
#import "BasicTeachingsViewController.h"


@interface BasicMainViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *topLeftImage;
@property (weak, nonatomic) IBOutlet UIImageView *topRightImage;
@property (weak, nonatomic) IBOutlet UIImageView *middleLeftImage;
@property (weak, nonatomic) IBOutlet UIImageView *middleRightImage;
@property (weak, nonatomic) IBOutlet UIImageView *bottomLeftImage;
@property (weak, nonatomic) IBOutlet UIImageView *bottomRightImage;

@end

@implementation BasicMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self instatiateMainButtons];
    // Do any additional setup after loading the view from its nib.
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

-(void)userTappedTopLeftOption:(UITapGestureRecognizer *)tapGesture
{
    [UIView animateWithDuration:0.1 animations:^{self.topLeftImage.alpha = 0.0;}];
    [UIView animateWithDuration:0.3 animations:^{self.topLeftImage.alpha = 1.0;}];
    SocialMediaViewController *smvc = [SocialMediaViewController new];
    [self.navigationController pushViewController:smvc animated:YES];
}

-(void)userTappedMiddleLeftOption:(UITapGestureRecognizer *)tapGesture
{
    [UIView animateWithDuration:0.1 animations:^{self.middleLeftImage.alpha = 0.0;}];
    [UIView animateWithDuration:0.3 animations:^{self.middleLeftImage.alpha = 1.0;}];
    BlogViewController *blogController = [BlogViewController new];
    [self.navigationController pushViewController:blogController animated:YES];
}
-(void)userTappedBottomLeftOption:(UITapGestureRecognizer *)tapGesture
{
    [UIView animateWithDuration:0.1 animations:^{self.bottomLeftImage.alpha = 0.0;}];
    [UIView animateWithDuration:0.3 animations:^{self.bottomLeftImage.alpha = 1.0;}];
    GetInvolvedViewController *involvedController = [GetInvolvedViewController new];
    [self.navigationController pushViewController:involvedController animated:YES];
}
-(void)userTappedTopRightOption:(UITapGestureRecognizer *)tapGesture
{
    [UIView animateWithDuration:0.1 animations:^{self.topRightImage.alpha = 0.0;}];
    [UIView animateWithDuration:0.3 animations:^{self.topRightImage.alpha = 1.0;}];
    ScheduleViewController *scheduleViewController = [ScheduleViewController new];
    [self.navigationController pushViewController:scheduleViewController animated:YES];
}
-(void)userTappedMiddleRightOption:(UITapGestureRecognizer *)tapGesture
{
    [UIView animateWithDuration:0.1 animations:^{self.middleRightImage.alpha = 0.0;}];
    [UIView animateWithDuration:0.3 animations:^{self.middleRightImage.alpha = 1.0;}];
    BasicTeachingsViewController *teachingsController = [BasicTeachingsViewController new];
    [self.navigationController pushViewController:teachingsController animated:YES];
}

-(void)userTappedBottomRightOption:(UITapGestureRecognizer *)tapGesture
{
    [UIView animateWithDuration:0.1 animations:^{self.bottomRightImage.alpha = 0.0;}];
    [UIView animateWithDuration:0.3 animations:^{self.bottomRightImage.alpha = 1.0;}];
}

-(void)instatiateMainButtons
{
    UITapGestureRecognizer *tapTopLeftImage = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userTappedTopLeftOption:)];
    UITapGestureRecognizer *tapMiddleLeftImage = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userTappedMiddleLeftOption:)];
    UITapGestureRecognizer *tapBottomLeftImage = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userTappedBottomLeftOption:)];
    UITapGestureRecognizer *tapTopRightImage = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userTappedTopRightOption:)];
    UITapGestureRecognizer *tapMiddleRightImage = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userTappedMiddleRightOption:)];
    UITapGestureRecognizer *tapBottomRightImage = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userTappedBottomRightOption:)];

    [self.topLeftImage setUserInteractionEnabled:YES];
    [self.topRightImage setUserInteractionEnabled:YES];
    [self.middleLeftImage setUserInteractionEnabled:YES];
    [self.middleRightImage setUserInteractionEnabled:YES];
    [self.bottomLeftImage setUserInteractionEnabled:YES];
    [self.bottomRightImage setUserInteractionEnabled:YES];

    [self.topLeftImage addGestureRecognizer:tapTopLeftImage];
    [self.middleLeftImage addGestureRecognizer:tapMiddleLeftImage];
    [self.bottomLeftImage addGestureRecognizer:tapBottomLeftImage];
    [self.topRightImage addGestureRecognizer:tapTopRightImage];
    [self.middleRightImage addGestureRecognizer:tapMiddleRightImage];
    [self.bottomRightImage addGestureRecognizer:tapBottomRightImage];

    CALayer *topLeftLayer = [self.topLeftImage layer];
    [topLeftLayer setMasksToBounds:YES];
    [topLeftLayer setCornerRadius:50.0];

    CALayer *middleLeftLayer = [self.middleLeftImage layer];
    [middleLeftLayer setMasksToBounds:YES];
    [middleLeftLayer setCornerRadius:50.0];

    CALayer *bottomLeftLayer = [self.bottomLeftImage layer];
    [bottomLeftLayer setMasksToBounds:YES];
    [bottomLeftLayer setCornerRadius:50.0];

    CALayer *topRightLayer = [self.topRightImage layer];
    [topRightLayer setMasksToBounds:YES];
    [topRightLayer setCornerRadius:50.0];

    CALayer *middleRightLayer = [self.middleRightImage layer];
    [middleRightLayer setMasksToBounds:YES];
    [middleRightLayer setCornerRadius:50.0];

    CALayer *bottomRightLayer = [self.bottomRightImage layer];
    [bottomRightLayer setMasksToBounds:YES];
    [bottomRightLayer setCornerRadius:50.0];
}

@end
