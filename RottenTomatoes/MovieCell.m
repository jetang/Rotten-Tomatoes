//
//  MovieCell.m
//  RottenTomatoes
//
//  Created by Jeff Tang on 6/18/15.
//  Copyright (c) 2015 Jeff Tang. All rights reserved.
//

#import "MovieCell.h"

@implementation MovieCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)prepareForReuse {
    [super prepareForReuse];
    self.postView.image = nil;
}

@end
