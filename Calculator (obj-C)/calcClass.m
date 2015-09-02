//
//  calcClass.m
//  Calculator (obj-C)
//
//  Created by Admin on 21.08.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "calcClass.h"

@implementation calcClass
@synthesize numberA,numberB;


-(void)initDataString{
    
    data1 = @" ";
    data2=@" ";
}

-(NSString*)setFirstNumber:(NSInteger)number{
   calcClass *ob = [calcClass sharedInstance];
    
    NSString *tmp;
    if(number!=10){
        tmp=[NSString stringWithFormat:@"%d",number];}
    else{
        tmp=[NSString stringWithFormat:@"."];
    }
    
    ob->data1=[ob->data1 stringByAppendingFormat:@"%@",tmp];
    
    ob->numberA = [data1 doubleValue];
    return ob->data1;
}
-(NSString*)setSecondNumber:(NSInteger)number{
    NSString *tmp;
    if(number!=10){
        tmp=[NSString stringWithFormat:@"%d",number];}
    else{
        tmp=[NSString stringWithFormat:@"."];
    }
    calcClass *ob = [calcClass sharedInstance];
  
    ob->data2=[ob->data2 stringByAppendingFormat:@"%@",tmp];
    
    ob->numberB = [data2 doubleValue];
    return ob->data2;
    
}

-(void)setNumberOfOperation:(NSInteger)number{
    
    calcClass *ob = [calcClass sharedInstance];
    ob->numberOfOperation = number;
}

-(NSString*)getResult{
    calcClass *ob = [calcClass sharedInstance];
    
    switch(ob->numberOfOperation){
        case 666: ob->result = ob->numberA+ob->numberB; break;
        case 555: ob->result = ob->numberA-ob->numberB;break;
        case 444: ob->result = ob->numberA*ob->numberB;break;
        case 333: ob->result = ob ->numberA/numberB;break;
        case 111: ob->result=[ob factorial];break;
        case 222: ob->result=[ob sqrt];break;
    }
    ob->numberOfOperation = -1;
      ob->numberA = ob->result;
      ob->numberB = 0;
    ob->data1=@" ";
    ob->data2=@" ";
    NSString *tmp=[NSString stringWithFormat:@"%f",ob->result];
    
    return tmp;
    
}

+(calcClass*)sharedInstance{
    static calcClass* ob;
    static dispatch_once_t predicat;
    dispatch_once(&predicat, ^{ob=[[calcClass alloc]init];});
    return ob;
}


-(void)deleteNumbers{
    numberA=0;
    numberB = 0;
    data1=@" ";
    data2=@" ";

}

-(double)factorial{
    double res=1;
    for(int i=2;i<=numberA;i++){
        res=res*i;
    }
    return res;
}

-(double)sqrt{
    
    return sqrt(numberA);
}

@end