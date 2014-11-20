//
//  ListController.m
//  Practise
//
//  Created by DX175 on 11/17/14.
//  Copyright (c) 2014 DX175. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "ListController.h"
@interface ListController ()
@property(nonatomic, strong) UITableView *tableView;
@end

@implementation ListController
{
    AVAudioPlayer *audioPlayer;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.rightBarButtonItem.target = self;
    self.navigationItem.rightBarButtonItem.action = @selector(stopButtonPressed);
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:1.0 green:(206/255.0) blue:(39/255.0) alpha:1.0];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    self.title = _songTitle;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *sectionTitle = [_lineNumbers objectAtIndex:section];
    NSArray *sectionContent = [_lyricsList objectForKey:sectionTitle];
    return sectionContent.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"TableTwoItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    NSString *sectionTitle = [_lineNumbers objectAtIndex:indexPath.section];
    NSArray *sectionContent = [_lyricsList objectForKey:sectionTitle];
    NSString *lyric = [sectionContent objectAtIndex:indexPath.row];
    cell.textLabel.text = lyric;
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self stopTheMusic];
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:[_filePrefix stringByAppendingString:[@(indexPath.section*10 + indexPath.row) stringValue]] withExtension:@"mp3"];
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
    [audioPlayer play];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _lineNumbers.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [_lineNumbers objectAtIndex:section];
}

- (void) tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    header.contentView.backgroundColor = [UIColor blackColor];
    header.textLabel.textColor = [UIColor whiteColor];
}

- (void) stopButtonPressed
{
    [self stopTheMusic];
}

- (void)stopTheMusic {
    if([audioPlayer isPlaying]){
        [audioPlayer stop];
    }
}

@end