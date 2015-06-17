//
//  ViewController.m
//  RottenTomatoes
//
//  Created by Jeff Tang on 6/17/15.
//  Copyright (c) 2015 Jeff Tang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    NSString *postURLString = [self.movie valueForKeyPath:@"posters.detailed"];
    postURLString = [self convertPosterStringToHighRes:postURLString];
    [self.posterView setImageWithURL:[NSURL URLWithString:postURLString]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Helper to workaround Rotten Tomatoes only giving low res images.
- (NSString *) convertPosterStringToHighRes:(NSString *)urlString {
    NSRange range = [urlString rangeOfString:@".*cloudfront.net/" options:NSRegularExpressionSearch];
    NSString *returnValue = urlString;
    if (range.length > 0) {
        returnValue = [urlString stringByReplacingCharactersInRange:range withString: @"https://content6.flixster.com/"];
    }
    return returnValue;
}

@end
