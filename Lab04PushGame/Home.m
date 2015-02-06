//
//  ViewController.m
//  Lab04PushGame
//
//  Created by Jesus Antonio Hernandez Mendez on 04/02/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import "Home.h"

int counter;
int countDown = 0;
NSTimer *myTimer;

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    counter=0;
    countDown=0;
    myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ImprimeContador) userInfo:nil repeats:YES];
    self.lblTempo.text = @"";
}

-(void)ImprimeContador{
    int valor = 10-countDown;
    self.lblTempo.text = [NSString stringWithFormat:@"%d",valor];
    countDown++;
    if (countDown == 10) {
        [myTimer invalidate];
        myTimer = nil;
        [self GoToScore];
    }
}

- (void)Save{
    BOOL success = NO;
    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
    [DateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    success = [[DBManager getSharedInstance]saveData:
               [NSString stringWithFormat:@"%i",counter]
                                              detail:[DateFormatter stringFromDate:[NSDate date]]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)GoToScore{
    [self Save];
    [self performSegueWithIdentifier:@"HometoResultados" sender:self];
}


- (IBAction)btnPush:(id)sender {
    counter++;
    self.lblContar.text = [NSString stringWithFormat:@"%d",counter];
    
}

@end
