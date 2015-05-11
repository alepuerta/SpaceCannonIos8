//
//  CCMenuy.m
//  Space Cannon
//
//  Created by Alejandro on 27/4/15.
//  Copyright (c) 2015 Alejandro. All rights reserved.
//

#import "CCMenuy.h"

@implementation CCMenuy
{
    SKLabelNode *_scoreLabel;
    SKLabelNode *_topScoreLabel;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        SKSpriteNode *title = [SKSpriteNode spriteNodeWithImageNamed:@"Title"];
        title.position = CGPointMake(0, 140);
        [self addChild:title];
        
        SKSpriteNode *scoreBoard = [SKSpriteNode spriteNodeWithImageNamed:@"ScoreBoard"];
        scoreBoard.position = CGPointMake(0, 70);
        [self addChild:scoreBoard];
        
        SKSpriteNode *playButton = [SKSpriteNode spriteNodeWithImageNamed:@"PlayButton"];
        playButton.name = @"Play";
        playButton.position = CGPointMake(0, 0);
        [self addChild:playButton];
        
        _scoreLabel = [SKLabelNode labelNodeWithFontNamed:@"DIN Alternate"];
        _scoreLabel.fontSize = 30;
        _scoreLabel.position = CGPointMake(-52, 50);
        [self addChild:_scoreLabel];
        
        _topScoreLabel = [SKLabelNode labelNodeWithFontNamed:@"DIN Alternate"];
        _topScoreLabel.fontSize = 30;
        _topScoreLabel.position = CGPointMake(48, 50);
        [self addChild:_topScoreLabel];
        
        self.score = 0;
        self.topScore = 0;
    }
    return self;
}

-(void)setScore:(int)score
{
    _score = score;
    _scoreLabel.text = [[NSNumber numberWithInt:score] stringValue];
}

-(void)setTopScore:(int)topScore
{
    _topScore = topScore;
    _topScoreLabel.text = [[NSNumber numberWithInt:topScore] stringValue];
}

@end
