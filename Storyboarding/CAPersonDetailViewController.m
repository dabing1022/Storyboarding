//
//  CAPersonDetailViewController.m
//  Storyboarding
//
//  Created by ChildhoodAndy on 14-7-30.
//  Copyright (c) 2014年 ChildhoodAndy. All rights reserved.
//

#import "CAPersonDetailViewController.h"
#import "Person.h"

@interface CAPersonDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

@end

@implementation CAPersonDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.nameLabel.text = self.person.name;
    self.ageLabel.text = [NSString stringWithFormat:@"%d years old", self.person.age];
    
    [self.view setBackgroundColor:self.person.favorColor];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
