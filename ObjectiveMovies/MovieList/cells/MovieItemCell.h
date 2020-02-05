//
//  MovieItemCell.h
//  ObjectiveMovies
//
//  Created by Abay on 04.02.2020.
//  Copyright © 2020 Movie. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieItemCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *movieName;
@property (weak, nonatomic) IBOutlet UIImageView *movieImage;
@property (weak, nonatomic) IBOutlet UILabel *movieOverview;


@end

NS_ASSUME_NONNULL_END
