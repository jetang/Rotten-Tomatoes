//
//  ViewController.h
//  RottenTomatoes
//
//  Created by Jeff Tang on 6/17/15.
//  Copyright (c) 2015 Jeff Tang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIImageView+AFNetworking.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@property (weak, nonatomic) NSDictionary *movie;
@end

