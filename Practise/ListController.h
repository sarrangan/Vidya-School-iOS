//
//  ListController.h
//  Practise
//
//  Created by DX175 on 11/17/14.
//  Copyright (c) 2014 DX175. All rights reserved.
//

#ifndef Practise_ListController_h
#define Practise_ListController_h
#import <UIKit/UIKit.h>

@interface ListController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) NSDictionary *lyricsList;
@property(nonatomic, strong) NSArray *lineNumbers;
@property(nonatomic, strong) NSString *songTitle;
@property(nonatomic, strong) NSString *filePrefix;
@end

#endif
