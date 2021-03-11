//
//  TableViewCell.h
//  TestApp
//
//  Created by Andrey on 11/03/2021.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

+ (NSString*) cellId;

@property (nonatomic, copy) UILabel *leftLabel;
@property (nonatomic, copy) UILabel *rightLabel;

@end
