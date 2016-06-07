//
//  ViewController.h
//  pickervieweg
//
//  Created by Revo Tech on 5/31/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate, UICollectionViewDelegate,UICollectionViewDataSource,UITextFieldDelegate,UITextViewDelegate, UICollectionViewDelegateFlowLayout,UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lbl_date;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *color;
@property (strong, nonatomic) NSArray *date_Array;
@property (strong, nonatomic) NSArray      *month_Array;
 @property (strong, nonatomic) NSArray *arr_dates;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *col_height;
@property (weak, nonatomic) IBOutlet UILabel *lbl_comment_here;

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UICollectionView *collview;
 @property (strong, nonatomic) NSArray *timeArray;
// @property (weak, nonatomic) IBOutlet UITextField *txt_field;
@property (weak, nonatomic) IBOutlet UITextView *txt_view;


- (IBAction)btn_continue:(id)sender;

@end

