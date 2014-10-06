//
//  RBCommandTranslator.m
//  RBCommandBusDemo
//
//  Created by Roshan Balaji on 10/5/14.
//  Copyright (c) 2014 Uniq. All rights reserved.
//

#import "RBCommandTranslator.h"

@implementation RBCommandTranslator

-(NSString *)toCommandHandler:(id)command
{
 
    NSString *commandClassName =  NSStringFromClass([command class]);
    
    return [commandClassName stringByAppendingString:@"Handler"];

}

@end
