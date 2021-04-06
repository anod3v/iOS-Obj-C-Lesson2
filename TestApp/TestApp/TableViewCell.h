//
//  TableViewCell.h
//  TestApp
//
//  Created by Andrey on 11/03/2021.
//

#import <UIKit/UIKit.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

+ (NSString *)cellId;
@property (nonatomic, copy) UILabel *fullNameLabel;
@property (nonatomic, copy) UILabel *ageLabel;
- (void)setup:(Person*)person;

@end

NS_ASSUME_NONNULL_END
