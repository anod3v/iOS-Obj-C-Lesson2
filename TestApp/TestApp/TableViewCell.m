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
    
    self.fullNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, [UIScreen mainScreen].bounds.size.width / 2.0, 44.0)];
    self.fullNameLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview: self.fullNameLabel];
    
    self.ageLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.fullNameLabel.frame.size.width, 0.0, [UIScreen mainScreen].bounds.size.width / 2.0, 44.0)];
    self.ageLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview: self.ageLabel];
    
    
    return self;
}

- (void)setup:(Person*)person {
    self.fullNameLabel.text = person.fullName;
    self.ageLabel.text = person.age;
}

@end
