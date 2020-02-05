//
//  MovieDetailsViewController.m
//  ObjectiveMovies
//
//  Created by Abay on 05.02.2020.
//  Copyright © 2020 Movie. All rights reserved.
//

#import "MovieDetailsViewController.h"
#import <SDWebImage/SDWebImage.h>

@interface MovieDetailsViewController ()

@end

@implementation MovieDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _movieName.text = _movie.movieName;
    
    _overview.text = _movie.movieDescription;
    
    [ _movieImage sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://image.tmdb.org/t/p/w300%@", _movie.posterPath]]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
