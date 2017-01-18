# XYJGG
自定义图片九宫格（一句代码集成，简单，高效，简单点击回调，自动识别数据源三种格式：UIImage,NSString,URL) 
===
 <br>*个人邮箱：892569921@qq.com*
 ___
 [个人博客](http://blog.csdn.net/cry__boy"悬停显示"):http://blog.csdn.net/cry__boy<br/>
 [github](http://github.com/cryboyofyu"):http://github.com/cryboyofyu
 
 <br> 集成 :cocoapods <br/>
  <br> pod 'XYJGG'<br/>
   <br>实现九宫格图片排列，一句代码集成，不懂得或者有问题可以email 哦<br/>
   <br>`1.使用方法`<br/>
   ---
   <br>依赖库:‘SDWebImage’<br/>
   ``` objective-c
   XYJGGView * xyJGGView = [[XYJGGView alloc]initWithFrame:CGRectMake(XY_Padding, 0, XY_Width - XY_Padding*2, 100) withXYPhotosDataMArr:xyPhotosDataMArr withXYPlaceholderImg:[UIImage imageNamed:@"girl2.jpg"] withBgView:xyCell.contentView withXYItemViewTapBlock:^(UIView *xyItemView, NSMutableArray *xyPhotosDataMArr) {
        //这里是点击图片的回调事件，返回了点击该图片的对象，和该图片所在的图片数据源数组
      NSLog(@"点击了第:%ld张图片,图片所在数据数组:%@",xyItemView.tag+1,xyPhotosDataMArr);
    }];
    ```
    <br>`2.调整图片大小`<br>
在 XYConstant.h 文件中分别定义了 一张图片，四张图片的，默认图片的样式，需要调整的时候直接改宏就好，如果需要更多样式，发邮件给我，小弟继续更新。
<br>![image](https://github.com/cryboyofyu/XYJGG/blob/master/XYCustomJGGExample/XYCustomJGGExample/XYClasses/XYTestImgs/XYJGG.gif)</br>
   <br>**欢迎大家提意见，一起交流学习，会根据大家的反馈及时更新。谢谢!**<br/>
   
   <br>**如果小弟的一点点薄力可以给大家带来便利，小弟三生有幸！会再接再厉！您的支持就是我的动力！**<br/>
   
   <br>**还有《自定义表情键盘》《类似微博界面自定义图文混排》，感兴趣的要关注哦！**<br/>
