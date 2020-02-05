//
//  Movie.h
//  ObjectiveMovies
//
//  Created by Abay on 05.02.2020.
//  Copyright © 2020 Movie. All rights reserved.
//


@import Foundation;

@interface Movie: NSObject

@property (nonatomic, readwrite) NSString *movieName;

@property (nonatomic, readwrite) NSString *movieDescription;

@property (nonatomic, readwrite) NSString *posterPath;

@property (nonatomic, readwrite) NSNumber *popularity;

@end
