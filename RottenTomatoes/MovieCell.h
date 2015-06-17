//
//  MovieCell.h
//  RottenTomatoes
//
//  Created by Jeff Tang on 6/18/15.
//  Copyright (c) 2015 Jeff Tang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *postView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end
