//
//  MYTableViewCell1.m
//  MYSkin_Example
//
//  Created by APPLE on 2022/11/2.
//  Copyright © 2022 WenMingYan. All rights reserved.
//

#import "MYTableViewCell1.h"

@interface MYTableViewCell1 ()

@property (nonatomic, strong) UIImageView *iconImageView;/**<  左侧icon */
@property (nonatomic, strong) UILabel *titleLabel;/**<  标题栏 */
@property (nonatomic, strong) UISwitch *switchView;/**<  开关 */

@end

@implementation MYTableViewCell1


#pragma mark - dealloc
#pragma mark - life cycle

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initView];
    }
    return self;
}

- (void)initView {
    [self addSubview:self.iconImageView];
    [self addSubview:self.titleLabel];
    [self addSubview:self.switchView];
}

#pragma mark - Event Response

#pragma mark - private methods
#pragma mark - getters & setters & init members

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
//        _titleLabel.textColor = ColorWithHex(123);
        _titleLabel.font = [UIFont systemFontOfSize:<#number#>];
    }
    return _titleLabel;
}

- (UIImageView *)iconImageView {
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] init];
    }
    return _iconImageView;
}
@end
