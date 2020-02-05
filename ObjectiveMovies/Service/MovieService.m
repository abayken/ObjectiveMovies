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

- (void)getMovies:(void (^)(NSMutableArray<Movie *> *))callback {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"movies" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSArray<NSDictionary*> *arr = [dict objectForKey:@"data"];
    
    NSMutableArray<Movie*> *movies = [NSMutableArray new];
    
    for (int i = 0; i < [arr count]; i++) {
        Movie *movie = [Movie new];
        movie.movieName = [arr[i] objectForKey:@"title"];
        movie.movieDescription = [arr[i] objectForKey:@"overview"];
        movie.posterPath = [arr[i] objectForKey:@"poster_path"];
        //[movies addObject:[arr[i] objectForKey:@"title"]];
        [movies addObject:movie];
    }
    
    callback(movies);
}



@end
