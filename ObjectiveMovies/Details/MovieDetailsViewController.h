//
//  MovieDetailsViewController.h
//  ObjectiveMovies
//
//  Created by Abay on 05.02.2020.
//  Copyright © 2020 Movie. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieDetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *movieImage;
@property (weak, nonatomic) IBOutlet UILabel *movieName;
@property (weak, nonatomic) IBOutlet UILabel *popularity;
@property (weak, nonatomic) IBOutlet UILabel *overview;

@property (nonatomic, assign) Movie *movie;

@end

NS_ASSUME_NONNULL_END
