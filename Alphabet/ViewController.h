//
//  ViewController.h
//  Alphabet
//
//  Created by Tony Clixby on 04/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    enum { eMaxLetters = 26 };
    
    IBOutlet UILabel* m_letterLabel;
    IBOutlet UILabel* m_wordLabel;
    IBOutlet UIImageView* m_image;
    
    IBOutlet UIButton* m_button;
    
    int m_currentLetterIndex;
    NSString* m_objectName[eMaxLetters];
    NSString* m_imageName[eMaxLetters];
}

-(IBAction) onTap:(id)sender;

@end
