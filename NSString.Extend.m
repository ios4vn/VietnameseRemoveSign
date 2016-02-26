//
//  NSString+Extend.m
//  Horoscope
//
//  Created by Hai Trieu on 4/12/13.
//  Copyright (c) 2013 Adriaenssen BVBA. All rights reserved.
//

#import "NSString+Extend.h"

@implementation NSString (Extend)

-(NSString *)removeSign{

    NSArray *fromArray = [NSArray arrayWithObjects:@"à", @"á", @"ạ", @"ả", @"ã", @"â",@"ầ", @"ấ", @"ậ", @"ẩ", @"ẫ", @"ă", @"ằ", @"ắ", @"ặ", @"ẳ", @"ẵ", @"è", @"é", @"ẹ", @"ẻ", @"ẽ", @"ê", @"ề", @"ế", @"ệ", @"ể", @"ễ", @"ì", @"í", @"ị", @"ỉ", @"ĩ",@"ò", @"ó", @"ọ", @"ỏ", @"õ", @"ô", @"ồ", @"ố", @"ộ", @"ổ", @"ỗ", @"ơ", @"ờ", @"ớ", @"ợ", @"ở", @"ỡ",@"ù", @"ú", @"ụ", @"ủ", @"ũ", @"ư", @"ừ", @"ứ", @"ự", @"ử", @"ữ",@"ỳ", @"ý", @"ỵ", @"ỷ", @"ỹ",@"đ",@"À", @"Á", @"Ạ", @"Ả", @"Ã", @"Â", @"Ầ", @"Ấ", @"Ậ", @"Ẩ", @"Ẫ", @"Ă", @"Ằ", @"Ắ", @"Ặ", @"Ẳ", @"Ẵ",                          @"È", @"É", @"Ẹ", @"Ẻ", @"Ẽ", @"Ê", @"Ề", @"Ế", @"Ệ", @"Ể", @"Ễ",@"Ì", @"Í", @"Ị", @"Ỉ", @"Ĩ",@"Ò", @"Ó", @"Ọ", @"Ỏ", @"Õ", @"Ô", @"Ồ", @"Ố", @"Ộ", @"Ổ",@"Ỗ", @"Ơ", @"Ờ", @"Ớ", @"Ợ", @"Ở", @"Ỡ",@"Ù", @"Ú", @"Ụ", @"Ủ", @"Ũ", @"Ư", @"Ừ", @"Ứ", @"Ự", @"Ử", @"Ữ",@"Ỳ", @"Ý", @"Ỵ", @"Ỷ", @"Ỹ",@"Đ", @"ê", @"ù", @"à", nil];
    NSArray *toArray = [NSArray arrayWithObjects:@"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a", @"a",@"e", @"e", @"e", @"e", @"e", @"e", @"e", @"e", @"e", @"e", @"e",@"i", @"i", @"i", @"i", @"i",@"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o", @"o",@"u", @"u", @"u", @"u", @"u", @"u", @"u", @"u", @"u", @"u", @"u",@"y", @"y", @"y", @"y", @"y",@"d",@"A", @"A", @"A", @"A", @"A", @"A", @"A", @"A", @"A", @"A", @"A", @"A@", @"A", @"A", @"A", @"A", @"A",@"E", @"E", @"E", @"E", @"E", @"E", @"E", @"E", @"E", @"E", @"E",@"I", @"I", @"I", @"I", @"I",@"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O", @"O",@"U", @"U", @"U", @"U", @"U", @"U", @"U", @"U", @"U", @"U", @"U",@"Y", @"Y", @"Y", @"Y", @"Y",@"D", @"e", @"u", @"a", nil];
    
    // Make a mutable version of our string
    NSMutableString *newString = [NSMutableString stringWithString:self];
    
    // Deal with each replacement in turn
    for (uint n = 0; n < [fromArray count]; ++n)
        [newString replaceOccurrencesOfString:[fromArray objectAtIndex:n] withString:[toArray objectAtIndex:n] options:NSLiteralSearch range:NSMakeRange(0, [newString length])];

    return newString;
    
}

@end
