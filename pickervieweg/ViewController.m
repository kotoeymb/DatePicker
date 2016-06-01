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
    NSInteger firstComponent;
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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// returns the # of rows in each component..

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
  return 2;
   /*  NSUInteger number = 0;
    if (pickerView == 1) {
        number = 1;
    } else {
        
        number = _arr_dates.count;
        
    }
    NSLog(@"number of rows in component : %ld", (long)p);
    return number;
    */

}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //set number of rows
  
    
    if(component== 0)
    {
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
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row   inComponent:(NSInteger)component{NSLog(@"Selected Row %ld", (long)row);
    
   // NSMutableArray *muarr_temp = [[NSMutableArray alloc] initWithCapacity:_timeArray.count];
    NSInteger firstComponentRow = [self.picker selectedRowInComponent:0];
    NSInteger secondComponentRow = [self.picker selectedRowInComponent:1];
    float alphaValue = 0.0;
    
    
//    if (firstComponentRow) {
//        if () {
//            <#statements#>
//        }
//    }
//    else{
//    
//        NSLog(@"HElloWorld");
//    }
//    
    // _timeArray[firstComponent] = NULL;
    switch(secondComponentRow) {
        case 0:
            alphaValue = 50.0f/255.0f;
            break;
           }
    
    switch(firstComponentRow)
    {
            
        case 0:
            
            self.collview.backgroundColor = [UIColor purpleColor];
            self.color.text = @"Blue";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            _timeArray = @[@"9PM"];
           
            NSLog(@"AlphaValue is: %d",app);
            break;
        case 1:
             self.collview.backgroundColor = [UIColor purpleColor];
            self.color.text = @"Green";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:255.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
        
            app = 1;
         //    _timeArray = @[@"9PM",@"10PM"];
             NSLog(@"AlphaValue is: %d",app);
            break;
           
        case 2:
             self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Orange ";
            self.color.textColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            // _timeArray = @[@"9PM",@"10PM",@"11PM"];
            app = 2;
            break;
        case 3:
             self.collview.backgroundColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            self.color.text = @"Purple ";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
           // _timeArray = @[@"9PM",@"10PM",@"11PM",@"12PM"];
             app = 3;
            break;
        case 4:
             self.collview.backgroundColor =[UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            self.color.text = @"Red";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
          //   _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM"];
            app = 4;
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
            
            
        case 5:
            self.collview.backgroundColor =[UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            self.color.text = @"Yellow ";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
             app = 5;
            // _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM"];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 6:
            self.collview.backgroundColor =[UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            self.color.text = @"Blue";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
             app = 6;
            //_timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM"];
            break;
        case 7:
             self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Green";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:255.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
             app = 7;
            NSLog(@"AlphaValue is: %f",alphaValue);
           // _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM",@"4AM"];
            break;
        case 8:
             self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Orange ";
            self.color.textColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
             app = 8;
            // _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM",@"4AM",@"5AM"];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 9:
             self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Purple ";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
             app = 9;
           //  _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM",@"4AM",@"5AM",@"6AM"];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 10:
             self.collview.backgroundColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            self.color.text = @"Red";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
             app = 10;
           //  _timeArray = @[@"9PM",@"10PM",@"11PM",@"00PM",@"1AM",@"2AM",@"3AM",@"4AM",@"5AM",@"6AM",@"5AM"];
            NSLog(@"AlphaValue is: %f",alphaValue);
          //  NSLog(@"firstComponent: %li",(long)firstComponent);
            break;
  

    }
   
    [self.collview reloadData];
}


#pragma mark <UICollectionViewDataSource>

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
    return cell;
    
}/*

#pragma mark <UICollectionViewDelegate>
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath{
    
}
  */ 
//
//- (NSArray*)getTimeSlotWithIndex:(NSInteger)index
//{
//    model_deliverTime *delivertime = arr_delivertime[index];
//    NSArray *timeslots = delivertime.TimeSlot;
//    return timeslots;
//}


@end
