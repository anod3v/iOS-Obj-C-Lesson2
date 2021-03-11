//
//  TableViewCell.m
//  TestApp
//
//  Created by Andrey on 11/03/2021.
//

#import "TableViewCell.h"
static NSString *cellIdStatic = @"TableViewCell";

@implementation TableViewCell
+ (NSString*) cellId { return cellIdStatic; }

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) {
        return nil;
    }
    
    _leftLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, [UIScreen mainScreen].bounds.size.width / 2.0, 44.0)];
    _leftLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview: _leftLabel];
    
    _rightLabel = [[UILabel alloc] initWithFrame:CGRectMake(_leftLabel.frame.size.width, 0.0, [UIScreen mainScreen].bounds.size.width / 2.0, 44.0)];
    _rightLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview: _rightLabel];
    
    
    return self;
}

@end
