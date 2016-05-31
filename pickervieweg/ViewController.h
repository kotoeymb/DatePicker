//
//  ViewController.h
//  pickervieweg
//
//  Created by Revo Tech on 5/31/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *color;
@property (strong, nonatomic) NSArray *date_Array;
@property (strong, nonatomic)          NSArray      *month_Array;


@end

