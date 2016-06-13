//
//  FISSentence.m
//  
//
//  Created by Erica on 6/9/16.
//
//

#import "FISSentence.h"



@interface FISSentence()


@property (nonatomic,strong,readwrite)NSString *sentence;



@end





@implementation FISSentence

//PRIVATE METHOD

-(void)assembleSentence{
    
    self.sentence = [[self.words componentsJoinedByString:@" "] mutableCopy];
      self.sentence = [self.sentence stringByAppendingString:self.punctuation];
    
}


-(BOOL)validWord: (NSString *)word {
    
    
    if ([word isEqualToString:@""] || [word isEqualToString:@" "] || word == nil){
               return FALSE;
           }
    
       return TRUE;
}



-(BOOL)validPunctuation: (NSString *)punctuation{
    
    NSString *punctuationString = @"//.?!,;:-";
    
    if(punctuation != nil) {
        if ([punctuationString containsString:punctuation]) {
            return YES;
        }
    }
    return NO;
}



-(BOOL)validIndex: (NSUInteger)index {
    
    if (index <[self.words count]) {
        return YES;
    }
    
    return NO;
}





//PUBLIC METHODS




-(void)addWord:(NSString *)word{
    if ([self validWord:word])
    {
        [self.words addObject:word];
    }
    
    [self assembleSentence];
    
}

-(void)addWords:(NSArray *)words       withPunctuation:(NSString *)punctuation{
    
    if ([self validPunctuation:punctuation]) {
               self.punctuation = punctuation;
        
           }
    
       for (NSString *stringFromArray in words){
                if ([self validWord:stringFromArray]&&[self.punctuation isEqualToString:punctuation]){
                       [self.words addObject:stringFromArray];
                   }
          [self assembleSentence];
           }
       return;
    }


-(void)removeWordAtIndex: (NSUInteger )index{
    
    
    if([self validIndex:index]) {
        
        [self.words removeObjectAtIndex:index];
        
    }
    
    [self assembleSentence];

}

-(void)insertWord:(NSString *)word     atIndex: (NSUInteger)index {
    if ([self validIndex:index] && [self validWord:word]) {
        
        [self.words insertObject:word atIndex:index];
           }


       [self assembleSentence];
}

-(void)replacePunctuationWithPunctuation:(NSString *)punctuation{
    
    
       if([self validPunctuation:punctuation]) {
        
               self.punctuation = punctuation;
            }
    
      [self assembleSentence];
}

-(void)replaceWordAtIndex:(NSUInteger)index             withWord:(NSString *)word{
    
    
        if([self validWord:word] && [self validIndex:index]) {
        
               [self.words replaceObjectAtIndex:index withObject:word];
           }

      [self assembleSentence];
}










@end
