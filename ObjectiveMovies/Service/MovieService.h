//
//  MovieService.h
//  ObjectiveMovies
//
//  Created by Abay on 05.02.2020.
//  Copyright © 2020 Movie. All rights reserved.
//

#import "Movie.h"

@import Foundation;



@interface MovieService: NSObject

- (void) getMovies: (void(^) (NSMutableArray <Movie *>*)) callback;

@end

