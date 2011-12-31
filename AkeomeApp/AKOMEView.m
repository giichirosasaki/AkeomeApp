//
//  AKOMEView.m
//  AkeomeApp
//
//  Created by 義一郎 佐々木 on 12/01/01.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AKOMEView.h"

@implementation AKOMEView
@synthesize globalTic;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        globalTic = 0;

    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{


    NSArray* msg =[NSArray arrayWithObjects:@"あ",@"け",@"ま",@"し",@"て",@"お",@"め",@"で",@"と",@"う",nil];
    UIFont* font = [UIFont fontWithName:@"HiraMinProN-W3" size:65];
    
    

    int leftbaseX = self.frame.origin.x;
    int rightbaseX = self.frame.size.width / 2.0;
    int drawSizeWidth = rightbaseX;
    
    int baseY = self.frame.origin.y;
    int drawSizeHeight = self.frame.size.height / 5;
    
    int showCount = globalTic % ([msg count]+1);
    
    for(int i =0 ; i< showCount && i<[msg count]; i++)
    {
        
        CGRect drawarea;
        if(i < 5){
            drawarea.origin.x  = rightbaseX;
        }else{
            drawarea.origin.x  = leftbaseX;
        }
        drawarea.origin.y = baseY + (drawSizeHeight * (i%5));
        drawarea.size.width = drawSizeWidth;
        drawarea.size.height = drawSizeHeight;
        
        NSString* word = [msg objectAtIndex:i];        
        [word drawInRect:drawarea withFont:font];
        
    }
}


@end
