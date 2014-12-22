//
//  ViewController.m
//  RBCommandBusDemo
//
//  Created by Roshan Balaji on 10/5/14.
//  Copyright (c) 2014 Uniq. All rights reserved.
//

#import "ViewController.h"
#import "RBCommandBus.h"
#import "LoginCommand.h"

@interface ViewController ()

@property(nonatomic, strong)RBCommandBus *commandBus;
@property (strong, nonatomic) IBOutlet UILabel *result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //MOVE THIS TO YOUR BASE CLASS
    self.commandBus = [RBCommandBus new];
    [self subscriptions];
    [self performLogin];
    //[self performLoginWithCompletion];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)subscriptions{
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didLogIn:)
                                                 name:KDIDLOGINNOTIFICATION object:nil];
    
    
}

-(void)performLogin{
    
    LoginCommand *loginCommand = [LoginCommand new];
    
    loginCommand.username = @"John Appleseed";
    loginCommand.password = @"password";
    
    [self.commandBus executeCommand:loginCommand];
    
    
}

//-(void)performLoginWithCompletion{
//    
//    LoginCommand *loginCommand = [LoginCommand new];
//    
//    loginCommand.username = @"John Appleseed";
//    loginCommand.password = @"password";
//    
//    [self.commandBus executeCommand:loginCommand withCompletion:^(NSString *result) {
//        
//        NSLog(@"Result after completion %@", result);
//        
//    }];
//
//}

-(void)didLogIn:(NSNotification *)notification{
    
    NSString *result = [notification.userInfo objectForKey:@"result"];
    
    [self.result setText:result];
    
}

@end
