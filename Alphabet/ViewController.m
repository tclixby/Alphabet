//
//  ViewController.m
//  Alphabet
//
//  Created by Tony Clixby on 04/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [m_letterLabel setAlpha:0.0f];
    [m_wordLabel setAlpha:0.0f];
    
    m_currentLetterIndex = 0;
    
    m_objectName[0]  = @"apple";
    m_objectName[1]  = @"bird";
    m_objectName[2]  = @"cat";
    m_objectName[3]  = @"donkey";
    m_objectName[4]  = @"elephant";
    m_objectName[5]  = @"flower";
    m_objectName[6]  = @"goat";
    m_objectName[7]  = @"horse";
    m_objectName[8]  = @"insect";
    m_objectName[9]  = @"jump";
    m_objectName[10] = @"kangaroo";
    m_objectName[11] = @"lion";
    m_objectName[12] = @"monkey";
    m_objectName[13] = @"net";
    m_objectName[14] = @"orange";
    m_objectName[15] = @"pineapple";
    m_objectName[16] = @"queue";
    m_objectName[17] = @"red";
    m_objectName[18] = @"sun";
    m_objectName[19] = @"tree";
    m_objectName[20] = @"umbrella";
    m_objectName[21] = @"violin";
    m_objectName[22] = @"water";
    m_objectName[23] = @"x-ray";
    m_objectName[24] = @"yacht";
    m_objectName[25] = @"zebra";

    m_imageName[0]  = @"apple.jpg";
    m_imageName[1]  = @"bird.jpg";
    m_imageName[2]  = @"cat.jpg";
    m_imageName[3]  = @"donkey.jpg";
    m_imageName[4]  = @"elephant.jpg";
    m_imageName[5]  = @"flower.jpg";
    m_imageName[6]  = @"goat.jpg";
    m_imageName[7]  = @"horse.jpg";
    m_imageName[8]  = @"insect.jpg";
    m_imageName[9]  = @"jump.jpg";
    m_imageName[10] = @"kangaroo.jpg";
    m_imageName[11] = @"lion.jpg";
    m_imageName[12] = @"monkey.jpg";
    m_imageName[13] = @"net.jpg";
    m_imageName[14] = @"orange.jpg";
    m_imageName[15] = @"pineapple.jpg";
    m_imageName[16] = @"queue.jpg";
    m_imageName[17] = @"red.jpg";
    m_imageName[18] = @"sun.jpg";
    m_imageName[19] = @"tree.jpg";
    m_imageName[20] = @"umbrella.jpg";
    m_imageName[21] = @"violin.jpg";
    m_imageName[22] = @"water.jpg";
    m_imageName[23] = @"x-ray.jpg";
    m_imageName[24] = @"yacht.jpg";
    m_imageName[25] = @"zebra.jpg";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
    [m_letterLabel release];
    [m_wordLabel release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(void) setupNextCard
{
    [m_letterLabel setAlpha:0.0f];
    [m_wordLabel setAlpha:0.0f];
    
    m_currentLetterIndex = m_currentLetterIndex + 1;
    
    if (m_currentLetterIndex == eMaxLetters) {
        m_currentLetterIndex = 0;
    }
    
    [m_wordLabel setText:m_objectName[m_currentLetterIndex]];
    [m_letterLabel setText:[NSString stringWithFormat:@"%c", 'a' + m_currentLetterIndex]];
    [m_image setImage:[UIImage imageNamed:m_imageName[m_currentLetterIndex]]];
}

-(IBAction) onTap:(id)sender
{
    if (m_letterLabel.alpha == 0.0f) {
        [m_letterLabel setAlpha:1.0f];
    } else if (m_wordLabel.alpha == 0.0f) {
        [m_wordLabel setAlpha:1.0f];
    } else {
        [self setupNextCard];
    }
}

@end
