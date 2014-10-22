//
//  ToDoItem.h
//  ToDoList
//
//  Created by Sofia Ferreira on 22/10/14.
//  Copyright (c) 2014 Sofia Ferreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
