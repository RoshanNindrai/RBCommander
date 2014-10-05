//
//  RBCommandTranslator.h
//  RBCommandBusDemo
//
//  Created by Roshan Balaji on 10/5/14.
//  Copyright (c) 2014 Uniq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RBCommandTranslator : NSObject

-(NSString *)toCommandHandler:(id)command;

@end
