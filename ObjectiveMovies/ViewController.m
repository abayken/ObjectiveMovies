//
//  ViewController.m
//  ObjectiveMovies
//
//  Created by Abay on 04.02.2020.
//  Copyright © 2020 Movie. All rights reserved.
//

#import "ViewController.h"
#import "MovieItemCell.h"
#import "MovieService.h"
#import <SDWebImage/SDWebImage.h>

@import UIKit;
@import Foundation;

@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *movieTableView;

@end

@implementation ViewController

MovieService *service;


NSArray<Movie*> * moviesList;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_movieTableView registerNib:[UINib nibWithNibName:@"MovieItem" bundle:nil] forCellReuseIdentifier:@"movie-cell"];
    
    service = [[MovieService alloc] init];
    
    moviesList = [NSArray new];
    
    [self fetchMovies];
}



- (void) fetchMovies {
    [service getMovies:^(NSMutableArray<Movie *> *movies) {
        
        moviesList = movies;
        
        [self.movieTableView reloadData];
        
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return moviesList.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieItemCell * cell =  (MovieItemCell *) [tableView dequeueReusableCellWithIdentifier:@"movie-cell" forIndexPath:indexPath];
    
    cell.movieName.text = moviesList[indexPath.row].movieName;
    
    cell.movieOverview.text = moviesList[indexPath.row].movieDescription;
    
    [[cell movieImage] sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://image.tmdb.org/t/p/w300%@", moviesList[indexPath.row].posterPath]]];
    
    return cell;
}


@end
