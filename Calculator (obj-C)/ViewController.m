//
//  ViewController.m
//  Calculator (obj-C)
//
//  Created by Admin on 21.08.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"
#import "calcClass.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize resultWindow;
- (void)viewDidLoad {
    [super viewDidLoad];
    calcClass *ob = [calcClass sharedInstance];
    [ob initDataString];
    resultWindow.userInteractionEnabled = NO;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)digitals:(id)sender {
    calcClass* ob = [calcClass sharedInstance];
    
    if(ob->numberOfOperation>9){
         self.resultWindow.text=[ob setSecondNumber:[sender tag]];
    }
    else{
          self.resultWindow.text=[ob setFirstNumber:[sender tag]];
    }
  
}

- (IBAction)delete:(id)sender {
      calcClass* ob = [calcClass sharedInstance];
    [ob deleteNumbers];
    self.resultWindow.text = nil;

    
}
- (IBAction)smile:(id)sender {
    NSArray* arr =[NSArray arrayWithObjects:@"All will be good!",@"ПТН-ПНХ",@"Dont worry, be happy",@"Не будь мудаком",@"Your code is shit",nil];
    int number =random()%5;
    self.resultWindow.text = [arr objectAtIndex:number];
}

- (IBAction)sqrt:(id)sender {
    calcClass *ob = [calcClass sharedInstance];
    ob->numberOfOperation=[sender tag];
    self.resultWindow.text = [ob getResult];
}


- (IBAction)add:(id)sender {
    calcClass *ob = [calcClass sharedInstance];
    [ob setNumberOfOperation:[sender tag]];
    self.resultWindow.text = nil;
    
}
- (IBAction)fact:(id)sender {
    calcClass *ob = [calcClass sharedInstance];
    ob->numberOfOperation=[sender tag];
    self.resultWindow.text = [ob getResult];
}

- (IBAction)equal:(id)sender {
    calcClass *ob = [calcClass sharedInstance];
    
   self.resultWindow.text = [ob getResult];
    
}
@end
