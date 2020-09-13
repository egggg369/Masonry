//
//  ViewController.m
//  TestM3
//
//  Created by 郭红乐 on 2020/8/10.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *yView = [[UIView alloc]init];
    [self.view addSubview:yView];
    yView.backgroundColor = [UIColor yellowColor];
    UIImageView *twoimage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片2"]];
    [self.view addSubview:twoimage];
    [twoimage mas_makeConstraints:^(MASConstraintMaker *make) {
        //2. 左上右下边距
//        make.left.equalTo(self.view).with.mas_equalTo(30);
//        make.top.equalTo(self.view).with.offset(50);
//        make.right.equalTo(self.view).with.offset(-20);
//        make.bottom.equalTo(self.view).with.offset(-30);

        //1.普通视图，上左宽长offset和equalTo
        make.left.mas_equalTo(self.view.frame.size.width * 0.03);
        make.top.mas_equalTo(self.view.frame.size.height * 0.07);
        make.right.offset(self.view.frame.size.width * -0.51);
        //make.width.mas_offset(self.view.frame.size.width * 0.45);
        //make.height.mas_offset(self.view.frame.size.height * 0.25);
        make.bottom.mas_equalTo(self.view.frame.size.height * -0.68);
               //后两句等同于
                //make.height.and.width.equalTo(@50);
        
//        //2. 普通视图，用equalto (第二种如果有条件会覆盖之前的）
//        make.left.mas_equalTo(200);
//        make.top.mas_equalTo(30);
//        make.bottom.mas_equalTo(-20);
//        make.right.mas_equalTo(-20);

    }];
    
    UIImageView *threeimage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片3"]];
    [self.view addSubview:threeimage];
    [threeimage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.frame.size.width * 0.52);
        make.top.mas_offset(self.view.frame.size.height * 0.07);
        make.width.mas_offset(self.view.frame.size.width * 0.45);
        make.height.mas_offset(self.view.frame.size.height * 0.25);
    }];
    
    UIImageView *fimage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片5"]];
    [self.view addSubview:fimage];
    [fimage mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(self.view.frame.size.width * 0.03);
        make.top.mas_equalTo(twoimage.mas_bottom).offset(100);
        make.top.mas_offset(self.view.frame.size.height * 0.70);
        make.width.equalTo(threeimage);
        
                //make.width.mas_offset(self.view.frame.size.width * 0.45);
                make.height.mas_offset(self.view.frame.size.height * 0.22);
    }];
    
    
    UIImageView *siximage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片6"]];
    [self.view addSubview:siximage];
    [siximage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(fimage.mas_right).offset(10);
                //make.left.mas_equalTo(self.view.frame.size.width * 0.52);
        make.top.mas_offset(self.view.frame.size.height * 0.70);
                make.width.mas_offset(self.view.frame.size.width * 0.45);
                make.height.mas_offset(self.view.frame.size.height * 0.22);

    }];
//
//
////测试中间视图
//    UIView *centerView = [[UIView alloc] init];
//    [self.view addSubview:centerView];
//    [centerView mas_makeConstraints:^(MASConstraintMaker *make) {
//        //中心
//        //make.center.equalTo(self.view);
////        make.centerX.equalTo(self.view.mas_centerX);
////        make.centerY.equalTo(self.view.mas_centerY);
////        make.width.and.height.mas_equalTo(@100);
//
//        make.center.equalTo(self.view);
//        make.size.mas_equalTo(CGSizeMake(300, 300));
//    }];
//    //两秒后变化
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [centerView mas_updateConstraints:^(MASConstraintMaker *make) {
//            make.size.mas_equalTo(CGSizeMake(100, 100));
//        }];
//    });
//    centerView.backgroundColor = [UIColor blueColor];
////
//    UIView *myView = [[UIView alloc] init];
//    [self.view addSubview:myView];
//    [myView mas_makeConstraints:^(MASConstraintMaker *make) {
//        //边距 1.inset  2. offset
//        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(150, 150, 150, 50));
////        make.left.and.top.equalTo(self.view).offset(50);
////        make.right.and.bottom.equalTo(self.view).offset(-50);
//    }];
//    myView.backgroundColor = [UIColor colorWithWhite:0.2 alpha:0.5];
//
//
//    UILabel *textLabel = [[UILabel alloc] init];
//    [self.view addSubview:textLabel];
//    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view);
//        //设置宽度小于等于200
//        make.width.lessThanOrEqualTo(@200);
//        //设置高度大于等于10
//        make.height.greaterThanOrEqualTo(@10);
//    }];
//    textLabel.text = @"这是测试的字符串。能看到1、2、3个步骤，第一步当然是上传照片了，要上传正面近照哦。上传后，网站会自动识别你的面部，如果觉得识别的不准，你还可以手动修改一下。左边可以看到16项修改参数，最上面是整体修改，你也可以根据自己的意愿单独修改某项，将鼠标放到选项上面，右边的预览图会显示相应的位置。";
//    textLabel.numberOfLines = 0;
//
//    //约束优先级
//    UIView *redView = [[UIView alloc] init];
//    [self.view addSubview:redView];
//    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view);
////        make.width.equalTo(self.view).priorityLow();
////        make.width.mas_equalTo(90).priorityHigh();
////        make.height.equalTo(self.view).priority(500);
////        make.height.mas_equalTo(300).priority(1000);
//
//        //设置当前约束值乘以多少，例如这个例子是redView的宽度是self.view宽度的0.5倍。
//        make.height.equalTo(self.view).multipliedBy(0.35);
//        //make.height.mas_equalTo(30);
//        make.width.equalTo(self.view).multipliedBy(0.5);
//    }];
//    redView.backgroundColor = [UIColor redColor];
//
    
    /**
     下面的例子是通过给equalTo()方法传入一个数组，设置数组中子视图及当前make对应的视图之间等高。
     
     需要注意的是，下面block中设置边距的时候，应该用insets来设置，而不是用offset。
     因为用offset设置right和bottom的边距时，这两个值应该是负数，所以如果通过offset来统一设置值会有问题。
     */
    
    CGFloat padding = 10;

//    UIView *redView = [[UIView alloc]init];
//    redView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:redView];

    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    UIView *yellowView = [[UIView alloc]init];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowView];

    UIImageView *oneimage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片1"]];
    [self.view insertSubview:oneimage atIndex:0];

    UIImageView *fourimage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"图片4"]];
    [self.view insertSubview:fourimage atIndex:0];
//
//
//
////
//////    /**********  等高   ***********/
//////    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
//////        make.left.right.top.equalTo(self.view).insets(UIEdgeInsetsMake(padding, padding, 0, padding));
//////        make.bottom.equalTo(blueView.mas_top).offset(-padding);
//////    }];
//////    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
//////        make.left.right.equalTo(self.view).insets(UIEdgeInsetsMake(0, padding, 0, padding));
//////        make.bottom.equalTo(yellowView.mas_top).offset(-padding);
//////    }];
//////
//////    /**
//////     下面设置make.height的数组是关键，通过这个数组可以设置这三个视图高度相等。其他例如宽度之类的，也是类似的方式。
//////     */
//////    [yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
//////        make.left.right.bottom.equalTo(self.view).insets(UIEdgeInsetsMake(0, padding, padding, padding));
//////        make.height.equalTo(@[blueView, redView]);
//////    }];
////
//////    /**********  等宽   ***********/
//////    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
//////        make.top.left.bottom.equalTo(self.view).insets(UIEdgeInsetsMake(padding, padding, padding, 0));
//////        make.right.equalTo(blueView.mas_left).offset(-padding);
//////    }];
//////    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
//////        make.top.bottom.equalTo(self.view).insets(UIEdgeInsetsMake(padding, 0, padding, 0));
//////        make.right.equalTo(yellowView.mas_left).offset(-padding);
//////    }];
//////    [yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
//////        make.top.bottom.right.equalTo(self.view).insets(UIEdgeInsetsMake(padding, 0, padding, padding));
//////        make.width.equalTo(@[redView, blueView]);
//////    }];
////
////    //子视图居中练习
    [oneimage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);
        make.left.equalTo(self.view).mas_offset(padding);
        make.right.equalTo(fourimage.mas_left).mas_offset(-padding);
        make.height.mas_equalTo(150);
    }];

    [fourimage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);
        make.right.equalTo(self.view).mas_offset(-padding);
        //  这句是错的   make.left.equalTo(redView.mas_right).mas_offset(padding);
        //make.width.equalTo(@100);
        make.width.equalTo(oneimage);
        make.height.mas_equalTo(150);
    }];
}




@end
