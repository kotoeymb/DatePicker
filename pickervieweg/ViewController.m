//
//  ViewController.m
//  pickervieweg
//
//  Created by Revo Tech on 5/31/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _picker.dataSource = self;
    _picker.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
    
    // self.colorArray  = [[NSArray alloc]        initWithObjects:@"Blue",@"Green",@"Orange",@"Purple",@"Red",@"Yellow" , nil];
    self.date_Array = @[@"1",@"1",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
    self.month_Array = @[@"April"];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// returns the # of rows in each component..

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
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row   inComponent:(NSInteger)component{NSLog(@"Selected Row %d", row);
    
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
            self.color.text = @"Blue";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 1:
            self.color.text = @"Green";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:255.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 2:
            self.color.text = @"Orange ";
            self.color.textColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 3:
            self.color.text = @"Purple ";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 4:
            self.color.text = @"Red";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 5:
            self.color.text = @"Yellow ";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 6:
            self.color.text = @"Blue";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 7:
            self.color.text = @"Green";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green:255.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 8:
            self.color.text = @"Orange ";
            self.color.textColor = [UIColor colorWithRed:205.0f/255.0f green:140.0f/255.0f blue:31.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 9:
            self.color.text = @"Purple ";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:255.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;
        case 10:
            self.color.text = @"Red";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:0.0f/255.0f blue:0.0f/255.0f alpha:alphaValue];
            NSLog(@"AlphaValue is: %f",alphaValue);
            break;

    }
}
@end
