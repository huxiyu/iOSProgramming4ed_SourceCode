//
//  BNRItem.h
//  RandomItemsMy
//
//  Created by cadcg on 16/2/6.
//  Copyright © 2016年 hxy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
  /*
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
    BNRItem *_containedItem; // 子
    __weak BNRItem *_container; // 父
   
}
*/


+ (instancetype)randomItem;

// BNRItem类的指定初始化方法
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

// 使用属性
@property (nonatomic, readwrite, strong) BNRItem *containedItem;
@property (nonatomic, readwrite, weak) BNRItem *container;
@property (nonatomic, readwrite, copy) NSString *itemName;
@property (nonatomic, readwrite, copy) NSString *serialNumber;
@property (nonatomic, readwrite, unsafe_unretained) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

/*
- (void)setContainedItem:(BNRItem *)item;
- (BNRItem *)containedItem;

- (void)setContainer:(BNRItem *)item;
- (BNRItem *)container;

- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;
 */
@end
