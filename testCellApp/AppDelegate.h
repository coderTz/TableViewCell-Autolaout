//
//  AppDelegate.h
//  testCellApp
//
//  Created by 谈振 on 2018/9/12.
//  Copyright © 2018年 CoderTz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

