//
//  XYHomePageVC.m
//  XYCustomJGGExample
//
//  Created by XY Lv on 16/12/6.
//  Copyright © 2016年 吕欣宇. All rights reserved.
//

#import "XYHomePageVC.h"
#import "XYConstant.h"
#import "XYJGGView.h"
@interface XYHomePageVC ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView * _xyTableView;
    NSMutableArray * _xyDataMArr;
    
}
@end

@implementation XYHomePageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self xy_initDataMArr];
    [self xy_layoutTableView];
}

- (void)xy_initDataMArr{
    _xyDataMArr = [[NSMutableArray alloc]init];
    
    for(int i=0;i<9;i++){
        if(i%9==0){
          NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];

            for(int i=0;i<1;i++){
                [xyPhotosDataMArr addObject:[UIImage imageNamed:@"NewGirl1.jpeg"]];
                
            }
            [_xyDataMArr addObject:xyPhotosDataMArr];

        }
        if(i%9==1){
            NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];

            for(int i=0;i<4;i++){
//                [xyPhotosDataMArr addObject:@"http://desk.fd.zol-img.com.cn/t_s960x600c5/g4/M00/0D/01/Cg-4y1ULoXCII6fEAAeQFx3fsKgAAXCmAPjugYAB5Av166.jpg"];

            }
            [_xyDataMArr addObject:xyPhotosDataMArr];

        }
        if(i%9==2){
            NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];

            for(int i=0;i<6;i++){
//                [xyPhotosDataMArr addObject:[NSURL URLWithString:@"http://d.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=5e1addbab4fb43161a4a727e15946a15/72f082025aafa40f288c73acad64034f78f0197c.jpg"]];
            }
            [_xyDataMArr addObject:xyPhotosDataMArr];

        }
        if(i%9==3){
            NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];
            
            for(int i=0;i<4;i++){
                [xyPhotosDataMArr addObject:[UIImage imageNamed:@"NewGirl1.jpeg"]];
                
            }
            [_xyDataMArr addObject:xyPhotosDataMArr];
            
        }
        if(i%9==4){
            NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];
            
            for(int i=0;i<1;i++){
//                [xyPhotosDataMArr addObject:@"http://desk.fd.zol-img.com.cn/t_s960x600c5/g4/M00/0D/01/Cg-4y1ULoXCII6fEAAeQFx3fsKgAAXCmAPjugYAB5Av166.jpg"];
                
            }
            [_xyDataMArr addObject:xyPhotosDataMArr];
            
        }
        if(i%9==5){
            NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];
            
            for(int i=0;i<6;i++){
//                [xyPhotosDataMArr addObject:@"http://desk.fd.zol-img.com.cn/t_s960x600c5/g4/M00/0D/01/Cg-4y1ULoXCII6fEAAeQFx3fsKgAAXCmAPjugYAB5Av166.jpg"];
                
            }
            [_xyDataMArr addObject:xyPhotosDataMArr];
            
        }
        if(i%9==6){
            NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];
            
            for(int i=0;i<2;i++){
//                [xyPhotosDataMArr addObject:[NSURL URLWithString:@"http://d.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=5e1addbab4fb43161a4a727e15946a15/72f082025aafa40f288c73acad64034f78f0197c.jpg"]];
            }
            [_xyDataMArr addObject:xyPhotosDataMArr];
            
        }
        if(i%9==7){
            NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];
            
            for(int i=0;i<5;i++){
                [xyPhotosDataMArr addObject:[UIImage imageNamed:@"NewGirl1.jpeg"]];
                
            }
            [_xyDataMArr addObject:xyPhotosDataMArr];
            
        }
        if(i%9==8){
            NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];
            
            for(int i=0;i<1;i++){
//                [xyPhotosDataMArr addObject:@"http://desk.fd.zol-img.com.cn/t_s960x600c5/g4/M00/0D/01/Cg-4y1ULoXCII6fEAAeQFx3fsKgAAXCmAPjugYAB5Av166.jpg"];
                
            }
            [_xyDataMArr addObject:xyPhotosDataMArr];
            
        }
        if(i%9==9){
            NSMutableArray * xyPhotosDataMArr = [[NSMutableArray alloc]init];
            
            for(int i=0;i<1;i++){
//                [xyPhotosDataMArr addObject:[NSURL URLWithString:@"http://d.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=5e1addbab4fb43161a4a727e15946a15/72f082025aafa40f288c73acad64034f78f0197c.jpg"]];
            }
            [_xyDataMArr addObject:xyPhotosDataMArr];
            
        }
        
    }
}

- (void)xy_layoutTableView{
    _xyTableView = [[UITableView alloc]initWithFrame:CGRectMake(0,0, XY_Width, XY_Height) style:UITableViewStylePlain];
    _xyTableView.delegate = self;
    _xyTableView.dataSource = self;
    [self.view addSubview:_xyTableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _xyDataMArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * xyCellIndentifier = @"XY_Lv";
    UITableViewCell * xyCell = [tableView dequeueReusableCellWithIdentifier:xyCellIndentifier];
    if(!xyCell){
        xyCell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:xyCellIndentifier];
    }
    NSMutableArray * xyPhotosDataMArr = [NSMutableArray arrayWithArray:[_xyDataMArr objectAtIndex:indexPath.row]];
    
    XYJGGView * xyJGGView = [[XYJGGView alloc]initWithFrame:CGRectMake(XY_Padding, 0, XY_Width - XY_Padding*2, 100) withXYPhotosDataMArr:xyPhotosDataMArr withXYPlaceholderImg:[UIImage imageNamed:@"girl2.jpg"] withBgView:xyCell.contentView withXYItemViewTapBlock:^(UIView *xyItemView, NSMutableArray *xyPhotosDataMArr) {
        
        NSLog(@"点击了第:%ld张图片,图片所在数据数组:%@",xyItemView.tag+1,xyPhotosDataMArr);
    }];
    xyJGGView.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.00];
    xyCell.contentView.backgroundColor = [UIColor whiteColor];

    return xyCell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
    
    for(XYJGGView * xyJGGView in cell.contentView.subviews){
        if([xyJGGView isMemberOfClass:[XYJGGView class]]){
            return xyJGGView.xy_itemViewH + 10;
        }
    }
    
    return 120;
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

@end
