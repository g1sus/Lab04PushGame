//
//  ViewController.h
//  Lab04PushGame
//
//  Created by Jesus Antonio Hernandez Mendez on 04/02/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface Home : UIViewController

//labels

@property (strong, nonatomic) IBOutlet UILabel *lblContar;

@property (strong, nonatomic) IBOutlet UILabel *lblTempo;

//actions

- (IBAction)btnPush:(id)sender;


@end

