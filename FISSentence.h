//
//  FISSentence.h
//  
//
//  Created by Erica on 6/9/16.
//
//

#import <Foundation/Foundation.h>

@interface FISSentence : NSObject

@property (readonly, nonatomic)NSString *sentence;

@property (nonatomic, strong)NSMutableArray *words;

@property (nonatomic, strong)NSString *punctuation;




-(void)addWord:(NSString *)word;

-(void)addWords:(NSArray *)words       withPunctuation:(NSString *)punctuation;

-(void)removeWordAtIndex: (NSUInteger )index;

-(void)insertWord:(NSString *)word     atIndex: (NSUInteger)index;

-(void)replacePunctuationWithPunctuation:(NSString *)punctuation;

-(void)replaceWordAtIndex:(NSUInteger)index             withWord:(NSString *)word;















@end
