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

@import UIKit;
@import Foundation;

@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *movieTableView;

@property (nonatomic) NSArray<Movie *> *movies;
@end

@implementation ViewController

MovieService *service;



- (void)viewDidLoad {
    [super viewDidLoad];
    [_movieTableView registerNib:[UINib nibWithNibName: @"MovieItem" bundle: nil] forCellReuseIdentifier: @"movie-cell"];
    service = [[MovieService alloc] init];
    self.movies = [NSArray new];
    [self fetchMovies];
}



- (void) fetchMovies {
    [service getMovies:^(NSArray<Movie *> *movies) {
        
        self.movies = movies;
        
        [self.movieTableView reloadData];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.movies == nil) {
        return 0;
    } else {
        return self.movies.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieItemCell * cell = (MovieItemCell*) [tableView dequeueReusableCellWithIdentifier:@"movie-cell" forIndexPath:indexPath];
    cell.someLabel.text = self.movies[indexPath.row].movieName;
    return cell;
}


@end
