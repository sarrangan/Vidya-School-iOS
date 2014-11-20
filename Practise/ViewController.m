//
//  ViewController.m
//  Practise
//
//  Created by DX175 on 11/17/14.
//  Copyright (c) 2014 DX175. All rights reserved.
//

#import "ViewController.h"
#import "ListController.h"
#import "Utils.h"

@interface ViewController ()
@property(nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController
{
    NSArray *tableSections;
    NSDictionary *songList;
    NSIndexPath *selectedIndex;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    songList = @{@"Suktams" : @[@"Purusha Suktam", @"Sri Suktam", @"Neela Suktam", @"Narayana Suktam", @"Durga Suktam", @"Medha Suktam"],
                 @"LSN" : @[@"Sri Lalitha Sahasranaama Stotram"]};
    tableSections = [songList allKeys];
    _tableView.dataSource = self;
    _tableView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *sectionTitle = [tableSections objectAtIndex:section];
    NSArray *sectionContent = [songList objectForKey:sectionTitle];
    return sectionContent.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"TableOneItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    NSString *sectionTitle = [tableSections objectAtIndex:indexPath.section];
    NSArray *sectionContent = [songList objectForKey:sectionTitle];
    NSString *songName = [sectionContent objectAtIndex:indexPath.row];
    cell.textLabel.text = songName;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    selectedIndex = indexPath;
    [self performSegueWithIdentifier:@"secondScreen" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"secondScreen"]) {
        ListController* listController = [segue destinationViewController];
        NSString *sectionTitle = [tableSections objectAtIndex:selectedIndex.section];
        NSArray *sectionContent = [songList objectForKey:sectionTitle];
        NSString *songName = [sectionContent objectAtIndex:selectedIndex.row];
        if([songName  isEqual: @"Sri Lalitha Sahasranaama Stotram"]){
            listController.lyricsList = [Utils loadLSN];
            listController.lineNumbers = [Utils linesLSN];
            listController.songTitle = @"Lalitha Sahasranaama";
            listController.filePrefix = @"lsn_";
        }
        else if([songName  isEqual: @"Durga Suktam"]){
            listController.lyricsList = [Utils loadDurgaSuktam];
            listController.lineNumbers = [Utils linesDurgaSuktam];
            listController.songTitle = @"Durga Suktam";
            listController.filePrefix = @"durga_suktam_";
        }
        else if([songName isEqual:@ "Purusha Suktam"]){
            listController.lyricsList = [Utils loadPurushaSuktam];
            listController.lineNumbers = [Utils linesPurushaSuktam];
            listController.songTitle = @"Purusha Suktam";
            listController.filePrefix = @"purusha_suktam_";
        }
        else if([songName isEqual:@ "Sri Suktam"]){
            listController.lyricsList = [Utils loadSriSuktam];
            listController.lineNumbers = [Utils linesSriSuktam];
            listController.songTitle = @"Sri Suktam";
            listController.filePrefix = @"sri_sooktam_";
        }
        else if([songName isEqual:@ "Narayana Suktam"]){
            listController.lyricsList = [Utils loadNarayanaSuktam];
            listController.lineNumbers = [Utils linesNarayanaSuktam];
            listController.songTitle = @"Narayana Suktam";
            listController.filePrefix = @"narayana_suktam_";
        }
        else if([songName isEqual:@ "Medha Suktam"]){
            listController.lyricsList = [Utils loadMedhaSuktam];
            listController.lineNumbers = [Utils linesMedhaSuktam];
            listController.songTitle = @"Medha Suktam";
            listController.filePrefix = @"medha_suktam_";
        }
        else if([songName isEqual:@ "Neela Suktam"]){
            listController.lyricsList = [Utils loadNeelaSuktam];
            listController.lineNumbers = [Utils linesNeelaSuktam];
            listController.songTitle = @"Neela Suktam";
            listController.filePrefix = @"neela_suktam_";
        }
        else{
            listController.lyricsList = [Utils loadNeelaSuktam];
            listController.lineNumbers = [Utils linesNeelaSuktam];
            listController.songTitle = @"Neela Suktam";
            listController.filePrefix = @"neela_suktam_";
        }
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return tableSections.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [tableSections objectAtIndex:section];
}

- (void) tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    header.contentView.backgroundColor = [UIColor blackColor];
    header.textLabel.textColor = [UIColor whiteColor];
}
@end
