//
//  AddToDoItemViewController.m
//  ToDoList
//
//  Created by Sofia Ferreira on 22/10/14.
//  Copyright (c) 2014 Sofia Ferreira. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()

@property (weak, nonatomic) IBOutlet UIButton *doneButton;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation AddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if(sender != self.doneButton) return;
    
    if(self.textField.text.length > 0){
        self.toDoItem = [[ToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
