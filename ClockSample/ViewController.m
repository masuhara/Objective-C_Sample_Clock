//
//  ViewController.m
//  ClockSample
//
//  Created by Master on 2014/11/01.
//  Copyright (c) 2014年 net.masuhara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    IBOutlet UIImageView *hour10_ImageView;
    IBOutlet UIImageView *hour0_ImageView;
    IBOutlet UIImageView *min10_ImageView;
    IBOutlet UIImageView *min0_ImageView;
    IBOutlet UIImageView *second10_ImageView;
    IBOutlet UIImageView *second0_ImageView;
    IBOutlet UIImageView *haikeiImageView;
    
    NSTimer *timer;
    
    UIImage *image0;
    UIImage *image1;
    UIImage *image2;
    UIImage *image3;
    UIImage *image4;
    UIImage *image5;
    UIImage *image6;
    UIImage *image7;
    UIImage *image8;
    UIImage *image9;
    
    
    int hour10;
    int hour0;
    int minute10;
    int minute0;
    int second10;
    int second0;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    haikeiImageView.image = [UIImage imageNamed:@"haikei.png"];
    
    image0 = [UIImage imageNamed:@"0.png"];
    image1 = [UIImage imageNamed:@"1.png"];
    image2 = [UIImage imageNamed:@"2.png"];
    image3 = [UIImage imageNamed:@"3.png"];
    image4 = [UIImage imageNamed:@"4.png"];
    image5 = [UIImage imageNamed:@"5.png"];
    image6 = [UIImage imageNamed:@"6.png"];
    image7 = [UIImage imageNamed:@"7.png"];
    image8 = [UIImage imageNamed:@"8.png"];
    image9 = [UIImage imageNamed:@"9.png"];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(time:)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (void)time:(NSTimer *)timer {
    NSCalendar *cal	= [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    unsigned int unitFlags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents *components = [cal components:unitFlags fromDate:[NSDate date]];
    int hour = (int)[components hour];
    int minute = (int)[components minute];
    int second = (int)[components second];
    
    if (hour>9) {
        hour0 = hour/10;
        hour10 = hour - (floor(hour/10)*10);
    }
    else {
        hour0 = 0;
        hour10 = hour;
    }
    
    if (minute>9) {
        minute0 = minute/10;
        minute10 = minute - (floor(minute/10)*10);
    }
    else {
        minute0 = 0;
        minute10 = minute;
    }
    if (second>9) {
        second0 = second/10;
        second10 = second - (floor(second/10)*10);
    }
    else {
        second0 = 0;
        second10 = second;
    }
    [self draw];
}

-(void)draw {
    switch (hour0) {
        case 0:
            [hour10_ImageView setImage:image0];
            break;
        case 1:
            [hour10_ImageView setImage:image1];
            break;
        case 2:
            [hour10_ImageView setImage:image2];
            break;
        case 3:
            [hour10_ImageView setImage:image3];
            break;
        case 4:
            [hour10_ImageView setImage:image4];
            break;
        case 5:
            [hour10_ImageView setImage:image5];
            break;
        case 6:
            [hour10_ImageView setImage:image6];
            break;
        case 7:
            [hour10_ImageView setImage:image7];
            break;
        case 8:
            [hour10_ImageView setImage:image8];
            break;
        case 9:
            [hour10_ImageView setImage:image9];
            break;
        default:
            break;
    }
    switch (hour10) {
        case 0:
            [hour0_ImageView setImage:image0];
            break;
        case 1:
            [hour0_ImageView setImage:image1];
            break;
        case 2:
            [hour0_ImageView setImage:image2];
            break;
        case 3:
            [hour0_ImageView setImage:image3];
            break;
        case 4:
            [hour0_ImageView setImage:image4];
            break;
        case 5:
            [hour0_ImageView setImage:image5];
            break;
        case 6:
            [hour0_ImageView setImage:image6];
            break;
        case 7:
            [hour0_ImageView setImage:image7];
            break;
        case 8:
            [hour0_ImageView setImage:image8];
            break;
        case 9:
            [hour0_ImageView setImage:image9];
            break;
        default:
            break;
    }
    switch (minute0) {
        case 0:
            [min10_ImageView setImage:image0];
            break;
        case 1:
            [min10_ImageView setImage:image1];
            break;
        case 2:
            [min10_ImageView setImage:image2];
            break;
        case 3:
            [min10_ImageView setImage:image3];
            break;
        case 4:
            [min10_ImageView setImage:image4];
            break;
        case 5:
            [min10_ImageView setImage:image5];
            break;
        case 6:
            [min10_ImageView setImage:image6];
            break;
        case 7:
            [min10_ImageView setImage:image7];
            break;
        case 8:
            [min10_ImageView setImage:image8];
            break;
        case 9:
            [min10_ImageView setImage:image9];
            break;
        default:
            break;
    }
    switch (minute10) {
        case 0:
            [min0_ImageView setImage:image0];
            break;
        case 1:
            [min0_ImageView setImage:image1];
            break;
        case 2:
            [min0_ImageView setImage:image2];
            break;
        case 3:
            [min0_ImageView setImage:image3];
            break;
        case 4:
            [min0_ImageView setImage:image4];
            break;
        case 5:
            [min0_ImageView setImage:image5];
            break;
        case 6:
            [min0_ImageView setImage:image6];
            break;
        case 7:
            [min0_ImageView setImage:image7];
            break;
        case 8:
            [min0_ImageView setImage:image8];
            break;
        case 9:
            [min0_ImageView setImage:image9];
            break;
        default:
            break;
    }
    
    
    switch (second0) {
        case 0:
            [second10_ImageView setImage:image0];
            break;
        case 1:
            [second10_ImageView setImage:image1];
            break;
        case 2:
            [second10_ImageView setImage:image2];
            break;
        case 3:
            [second10_ImageView setImage:image3];
            break;
        case 4:
            [second10_ImageView setImage:image4];
            break;
        case 5:
            [second10_ImageView setImage:image5];
            break;
        case 6:
            [second10_ImageView setImage:image6];
            break;
        case 7:
            [second10_ImageView setImage:image7];
            break;
        case 8:
            [second10_ImageView setImage:image8];
            break;
        case 9:
            [second10_ImageView setImage:image9];
            break;
        default:
            break;
    }
    switch (second10) {
        case 0:
            [second0_ImageView setImage:image0];
            break;
        case 1:
            [second0_ImageView setImage:image1];
            break;
        case 2:
            [second0_ImageView setImage:image2];
            break;
        case 3:
            [second0_ImageView setImage:image3];
            break;
        case 4:
            [second0_ImageView setImage:image4];
            break;
        case 5:
            [second0_ImageView setImage:image5];
            break;
        case 6:
            [second0_ImageView setImage:image6];
            break;
        case 7:
            [second0_ImageView setImage:image7];
            break;
        case 8:
            [second0_ImageView setImage:image8];
            break;
        case 9:
            [second0_ImageView setImage:image9];
            break;
        default:
            break;
    }
    
    
    
}


@end
