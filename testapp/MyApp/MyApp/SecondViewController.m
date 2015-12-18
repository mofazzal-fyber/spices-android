//
//  SecondViewController.m
//  MyApp
//
//  Created by Tito on 17/12/15.
//  Copyright © 2015 MyOrganisation. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UISearchBarDelegate>

@property (nonatomic, weak) IBOutlet UISearchBar *searchBar;
@property (nonatomic, weak) IBOutlet UIWebView *webView;

@end

@implementation SecondViewController

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self.searchBar resignFirstResponder];

    NSString *urlString = [NSString stringWithFormat:@"https://www.google.fr/search?q=%@", searchBar.text];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

@end
