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
    
    self.leftLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, [UIScreen mainScreen].bounds.size.width / 2.0, 44.0)];
    self.leftLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview: self.leftLabel];
    
    self.rightLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.leftLabel.frame.size.width, 0.0, [UIScreen mainScreen].bounds.size.width / 2.0, 44.0)];
    self.rightLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview: self.rightLabel];
    
    
    return self;
}

- (void)setup:(Person*)person {
    self.leftLabel.text = person.fullName;
    self.rightLabel.text = person.age;
}

@end
