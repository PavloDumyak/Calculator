//
//  calcClass.h
//  Calculator (obj-C)
//
//  Created by Admin on 21.08.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#ifndef Calculator__obj_C__calcClass_h
#define Calculator__obj_C__calcClass_h

@interface calcClass : NSObject{
    NSString* data1, *data2;
    double numberA, numberB, result;
    @public
    int numberOfOperation;
}
@property double numberA, numberB;
-(void)initDataString;
+(calcClass*)sharedInstance;
-(NSString*)setFirstNumber:(NSInteger)number;
-(NSString*)setSecondNumber:(NSInteger)number;
-(void)setNumberOfOperation:(NSInteger)number;
-(NSString*)getResult;
-(void)deleteNumbers;
-(double)factorial;
-(double)sqrt;
@end

#endif
