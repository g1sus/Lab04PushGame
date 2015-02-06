//
//  DBManager.h
//  Lab04PushGame
//
//  Created by Jesus Antonio Hernandez Mendez on 05/02/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
int lastScore;

@interface DBManager : NSObject
{
    NSString *databasePath;
}
+(DBManager*)getSharedInstance;
-(BOOL)createDB;
-(BOOL)saveData:(NSString*)registerNumber detail:(NSString*)
detail;
-(NSArray*) allRecords;


@end
