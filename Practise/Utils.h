//
//  Utils.h
//  Practise
//
//  Created by DX175 on 11/19/14.
//  Copyright (c) 2014 DX175. All rights reserved.
//

#ifndef Practise_Utils_h
#define Practise_Utils_h
#import <Foundation/Foundation.h>
@interface Utils : NSObject
+ (NSDictionary *) loadLSN;
+ (NSDictionary *) loadNeelaSuktam;
+ (NSDictionary *) loadDurgaSuktam;
+ (NSDictionary *) loadPurushaSuktam;
+ (NSDictionary *) loadSriSuktam;
+ (NSDictionary *) loadNarayanaSuktam;
+ (NSDictionary *) loadMedhaSuktam;
+ (NSArray *) linesLSN;
+ (NSArray *) linesNeelaSuktam;
+ (NSArray *) linesDurgaSuktam;
+ (NSArray *) linesPurushaSuktam;
+ (NSArray *) linesSriSuktam;
+ (NSArray *) linesNarayanaSuktam;
+ (NSArray *) linesMedhaSuktam;
@end

#endif
