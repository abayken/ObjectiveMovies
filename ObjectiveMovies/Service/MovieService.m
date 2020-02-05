//
//  MovieService.m
//  ObjectiveMovies
//
//  Created by Abay on 05.02.2020.
//  Copyright © 2020 Movie. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MovieService.h"

#import "Movie.h"

// key = 8ac81d8d

@implementation MovieService

- (void)getMovies:(void (^)(NSArray<Movie *> *))callback {
    Movie *movie = [Movie alloc];
    
    movie.movieDescription = @"Hello";
    movie.movieName = @"Sterw";
    
    NSArray <Movie *> *movies = @[movie];
    
    callback(movies);
}

@end
