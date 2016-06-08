//
//  ViewController.m
//  pickervieweg
//
//  Created by Revo Tech on 5/31/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController (){
    NSInteger selectedindex;
     int app;
}

@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _picker.dataSource = self;
    _picker.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
    
    // self.colorArray  = [[NSArray alloc]        initWithObjects:@"Blue",@"Green",@"Orange",@"Purple",@"Red",@"Yellow" , nil];
    self.date_Array = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
    self.month_Array = @[@"April"];
    // self.timeArray = @[@"9PM", @"11PM",@"1PM", @"1PM",@"2PM", @"3PM",@"4PM", @"5PM",@"6PM"];
   //  self.timeArray.count = app;
  
    
    [self.collview reloadData];
    _collview.dataSource = self;
    _collview.delegate = self;
    self.collview.allowsMultipleSelection = YES;
    
//    CGRect frame = self.collview.frame;
//    frame.size.width=85;
//    self.collview.frame = frame;
    
    _txt_view.delegate = self;
    self.collview.allowsMultipleSelection = NO;

    [self viewDidLayoutSubviews];
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

// returns the # of rows in each component..



#pragma picker view Delegate
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section;
{
    return 2.0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section;
{
    return 0.0;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
  return 2;

}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //set number of rows
  
    
    if(component== 0)
    {
       //  self.lbl_date.text = [NSString stringWithFormat:@"%d %@", app , _month_Array];
        return [self.date_Array count];
        
    }
    else
    {
        return [self.month_Array count];
    }
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(component == 0)
    {
        
        return [self.date_Array objectAtIndex:row];
    }
    else
    {
        return [self.month_Array objectAtIndex:row];
    }
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel* pickerLabel = (UILabel*)view;
    
    [[pickerView.subviews objectAtIndex:1] setHidden:TRUE];
    [[pickerView.subviews objectAtIndex:2] setHidden:TRUE];
    
    if (!pickerLabel)
    {
        pickerLabel = [[UILabel alloc] init];
        
        pickerLabel.font = [UIFont fontWithName:@"SFUIText-Regular" size:16];
        
        pickerLabel.textAlignment=NSTextAlignmentCenter;
    }
    
    if (component == 0) {
        
        [pickerLabel setText:[_date_Array objectAtIndex:row]];
        // self.lbl_date.text = [NSString stringWithFormat:@"%@ %@", _date_Array , _month_Array];

    }
    else {
         [pickerLabel setText:[_month_Array objectAtIndex:row]];
       // self.lbl_date.text = [NSString stringWithFormat:@"%@ %@", _date_Array , _month_Array];

    }
    
    return pickerLabel;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row   inComponent:(NSInteger)component{NSLog(@"Selected Row %ld", (long)row);
    
   // NSMutableArray *muarr_temp = [[NSMutableArray alloc] initWithCapacity:_timeArray.count];
    NSInteger firstComponentRow = [self.picker selectedRowInComponent:0];
    NSInteger secondComponentRow = [self.picker selectedRowInComponent:1];
    float alphaValue = 0.0;
    
        switch(secondComponentRow) {
        case 0:
            alphaValue = 50.0f/255.0f;
            break;
           }
    
    switch(firstComponentRow)
    {
            
        case 0:
            
          //   self.collview.backgroundColor = [UIColor purpleColor];
            self.color.text = @"Blue";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
         //   _timeArray = @[@"9PM"];
           self.lbl_date.text = @"April 1";
            app = 0;
            NSLog(@"AlphaValue is: %d",app);
            break;
        case 1:
           //   self.collview.backgroundColor = [UIColor purpleColor];
            self.color.text = @"Green";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:255.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            self.lbl_date.text = @"April 2";
            app = 1;
         //    _timeArray = @[@"9PM",@"10PM"];
             NSLog(@"AlphaValue is: %d",app);
            break;
           
        case 2:
           //   self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Orange ";
             self.lbl_date.text = @"April 3";
            self.color.textColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            // _timeArray = @[@"9PM",@"10PM",@"11PM"];
            app = 2;
            break;
        case 3:
           //  self.collview.backgroundColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            self.color.text = @"Purple ";
             self.lbl_date.text = @"April 4";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
           // _timeArray = @[@"9PM",@"10PM",@"11PM",@"12PM"];
             app = 3;
            break;
        case 4:
           //  self.collview.backgroundColor =[UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            self.color.text = @"Red";
             self.lbl_date.text = @"April 5";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
          //   _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM"];
            app = 4;
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
            
            
        case 5:
          //  self.collview.backgroundColor =[UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            self.color.text = @"Yellow ";
             self.lbl_date.text = @"April 6";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
             app = 5;
            // _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM"];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 6:
             self.lbl_date.text = @"April 7";
         //   self.collview.backgroundColor =[UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            self.color.text = @"Blue";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
             app = 6;
            //_timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM"];
            break;
        case 7:
             self.lbl_date.text = @"April 8";
         //     self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Green";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:255.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
             app = 7;
            NSLog(@"AlphaValue is: %f",alphaValue);
           // _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM",@"4AM"];
            break;
        case 8:
             self.lbl_date.text = @"April 9";
          //    self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Orange ";
            self.color.textColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
             app = 8;
            // _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM",@"4AM",@"5AM"];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 9:
             self.lbl_date.text = @"April 10";
         //    self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Purple ";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
             app = 9;
           //  _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM",@"4AM",@"5AM",@"6AM"];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 10:
             self.lbl_date.text = @"April 10";
         //    self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Red";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
             app = 10;
           //  _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM",@"4AM",@"5AM",@"6AM",@"5AM"];
            NSLog(@"AlphaValue is: %f",alphaValue);
          //  NSLog(@"firstComponent: %li",(long)firstComponent);
            break;
  

    }
//    for (app = 0;; <#increment#>) {
//        if app = n {
////        return
//        }
//    }
    
    [self.collview reloadData];
    if (app < 4) {
        
        self.col_height.constant = 59;
        NSLog(@"aaa %i",app);
    }
    else if(app< 8){
        
        self.col_height.constant = 115;
        NSLog(@"aaa %i",app);
    }else
    {
        self.col_height.constant= 170;
        NSLog(@"aaa %i",app);
    }

    
    [self.view setNeedsLayout];
    [self.collview reloadData];
}


#pragma mark <UICollectionViewDataSource>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
 //   selectedindex = indexPath.item;
    [collectionView reloadData];
    
    
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    // NSLog(@"Setting size for cell at index %d",indexPath.row);
    CGSize mSize = CGSizeMake(85, 53);
    return mSize;
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(3, 3, 3, 3);

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    // #warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    // #warning Incomplete implementation, return the number of items
    return app+1;
  
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
     NSLog(@"paymentcell : %ld",(long)indexPath.row);
    // Configure the cell
   //   cell.lbl_time.text = self.timeArray[indexPath.row];
    cell.lbl_time.text = [NSString stringWithFormat:@"%li", (long)indexPath.row +1 ];
    
    if (selectedindex == indexPath.item) {
        cell.backgroundColor = [UIColor cyanColor];
        cell.lbl_time.textColor = [UIColor whiteColor];
    }
    else {
        cell.backgroundColor = [UIColor whiteColor];
        cell.lbl_time.textColor = [UIColor lightGrayColor];
    }

    
    return cell;
    
}
//
//#pragma mark <UICollectionViewDelegate>
//
//
//
//- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//}
//
//- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//}
//
//- (void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath{
//    
//}
//

#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@"Comment Here"]) {
        textView.text = @"";
    }
   
    return YES;
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView
{
    if (textView.text.length == 0) {
        textView.text = @"Comment Here";
    }
    [textView resignFirstResponder];


    return YES;
}


- (void)textViewDidChange:(UITextView *)textView
{
    CGFloat fixedWidth = textView.frame.size.width;
    CGSize newSize = [textView sizeThatFits:CGSizeMake(fixedWidth, MAXFLOAT)];
    if (newSize.height <= 200) {
        CGRect newFrame = textView.frame;
        newFrame.size = CGSizeMake(fmaxf(newSize.width, fixedWidth), newSize.height);
        textView.frame = newFrame;
        NSLog(@"textView height : %f",newSize.height);
    }
    
    
}


- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    BOOL retValue = YES;
    CGFloat fixedWidth = textView.frame.size.width;
    CGSize newSize = [textView sizeThatFits:CGSizeMake(fixedWidth, MAXFLOAT)];
    NSLog(@"textView height : %f",newSize.height);
    
    if (newSize.height <= 200) {
        retValue = YES;
        NSLog(@"return YES");
    }  else {
        
        // retValue = NO;
        NSLog(@"return NO");
        if(newSize.height>=200){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Your Message Too Much" message:@"" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        
         retValue = YES;
        [alert show];
        

       
        }
        
        retValue = YES;
        
        
    }
    
    return retValue;
    

}

#pragma ScrollView

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    
   //  [self.colview_time reloadData];
    
    
  //  self.height_bgdelivertimeview.constant = 220 + self.tv_comment.frame.size.height;
    // _scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view_deliverytime.frame.origin.y + self.height_bgdelivertimeview.constant + 100);
  //  self.lbl_date.text = [NSString stringWithFormat:@"%@ %@", _date_Array , _month_Array];
    
 //   self.dataarray = [self getTimeSlotWithIndex:0];
//   _scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.txt_view.frame.origin.y + self.col_height.constant + 100);
    
     _scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.txt_view.frame.origin.y + self.col_height.constant + 100);

   
}


#pragma Continue button

- (IBAction)btn_continue:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Your Email will be send Soon" message:@"" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    [alert show];
    
}

#pragma mark - Responding to keyboard events

- (void)keyboardDidShow:(NSNotification *)notification
{
    NSDictionary* info = [notification userInfo];
    CGRect keyboardSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGRect newTextViewFrame = self.txt_view.frame;
    newTextViewFrame.size.height -= keyboardSize.size.height + 70;
    self.txt_view.frame = newTextViewFrame;
    self.txt_view.backgroundColor = [UIColor whiteColor];
}

- (void)keyboardWillHide:(NSNotification *)notification
{
    NSDictionary* info = [notification userInfo];
    CGRect keyboardSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGRect newTextViewFrame = self.txt_view.frame;
    newTextViewFrame.size.height += keyboardSize.size.height - 70;
    self.txt_view.frame = newTextViewFrame;
}
- (void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)keyboardWillShow:(NSNotification*)notification
{
    CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    UIEdgeInsets contentInsets = UIEdgeInsetsMake(0.0, 0.0, keyboardSize.height, 0.0);
    
    self.scrollView.contentInset = contentInsets;
    self.scrollView.scrollIndicatorInsets = contentInsets;
    
    CGRect rect = self.view.frame;
    rect.size.height -= keyboardSize.height;
    
    if (!CGRectContainsPoint(rect, self.txt_view.frame.origin)) {
        CGPoint scrollPoint = CGPointMake(0.0, self.txt_view.frame.origin.y - keyboardSize.height);
        [self.scrollView setContentOffset:scrollPoint animated:YES];
    }
}


- (void)dismissKeyboard
{
    [self textViewShouldEndEditing:self.txt_view];
}

@end
