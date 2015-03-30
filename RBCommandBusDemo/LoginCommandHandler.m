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
    
    sleep(2);
    return [command.username stringByAppendingString:@" logged in"];
    
}


@end
