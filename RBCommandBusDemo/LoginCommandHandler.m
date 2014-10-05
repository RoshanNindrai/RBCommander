//
//  LoginCommandHandler.m
//  RBCommandBusDemo
//
//  Created by Roshan Balaji on 10/5/14.
//  Copyright (c) 2014 Uniq. All rights reserved.
//

#import "LoginCommandHandler.h"
#import "LoginCommand.h"

@implementation LoginCommandHandler

-(id)handle:(LoginCommand *)command{
    
    return [command.username stringByAppendingString:@" Logged In"];
    
}

@end
