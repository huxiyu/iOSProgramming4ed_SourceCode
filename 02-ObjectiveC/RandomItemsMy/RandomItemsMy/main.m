//
//  main.m
//  RandomItemsMy
//
//  Created by cadcg on 16/2/6.
//  Copyright © 2016年 hxy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h" 

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个NSMutableArray 对象，并用items变量保存该对象的地址
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        /*
        // 向items所指向的NSmutableArray对象发送addObject:消息
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Thrss"];
        
        // 继续向同一个对象发送消息，这次是insertObject:atIndex:
        [items insertObject:@"Zero" atIndex:0];
        
        // 遍历items数组中的每一个item
        for (NSString *item in items)
        {
            // 打印对象消息
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
        
        // 创建一个新的NSString对象"Red Sofa"，并传给BNRItem对象
        //[item setItemName:@"Red Sofa"];
        item.itemName = @"Red Sofa";
        
        // 创建有一个新的NSString对象"A1B2C"，并传给BNRItem对象
        //[item setSerialNumber:@"A1B2C"];
        item.serialNumber = @"A1B2C";
        
        // 将数值100传给BNRItem对象，赋给valueInDollars
        //[item setValueInDollars:100];
        item.valueInDollars = 100;
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
        
        //NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
        NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        
        // 程序会先调用相应的实参的description方法，
        // 然后用返回的字符串替换%@
        NSLog(@"%@", item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoName);
        */
        
        /*
        for (int i = 0; i < 10; i++)
        {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
//        id lastObj = [items lastObject];
        
        // lastObj是BNRItem对象，无法处理count消息
//        [lastObj count];
        
//        id item11 = items[10];
         */
        
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        for (BNRItem *item in items)
        {
            NSLog(@"%@", item);
        }
        
        NSLog(@"Setting items to nil...");
        // 释放items所指向的NSMutableArray对象
        items = nil;
        
    }
    return 0;
}
