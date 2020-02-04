//
//  ViewController.m
//  ObjectiveMovies
//
//  Created by Abay on 04.02.2020.
//  Copyright © 2020 Movie. All rights reserved.
//

#import "ViewController.h"

@import UIKit;

@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *movieTableView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_movieTableView registerNib:[UINib nibWithNibName: @"MovieItem" bundle: nil] forCellReuseIdentifier: @"movie-cell"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"movie-cell" forIndexPath:indexPath];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


@end
