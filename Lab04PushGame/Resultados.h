//
//  Resultados.h
//  Lab04PushGame
//
//  Created by Jesus Antonio Hernandez Mendez on 05/02/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface Resultados : UIViewController

//tables
@property (strong, nonatomic) IBOutlet UITableView *tblTableView;

//labels
@property (strong, nonatomic) IBOutlet UILabel *lblScore;

@property (strong, nonatomic) IBOutlet UILabel *lblDate;

//Actions
- (IBAction)btnBack:(id)sender;





@end
