//
//  SDLMediaServiceDataSpec.m
//  SmartDeviceLinkTests
//
//  Created by Nicole on 2/8/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLMediaServiceData.h"
#import "SDLMediaType.h"
#import "SDLNames.h"

QuickSpecBegin(SDLMediaServiceDataSpec)

describe(@"Getter/Setter Tests", ^{
    __block SDLMediaType testMediaType = nil;
    __block NSString *testMediaTitle = nil;
    __block NSString *testMediaArtist = nil;
    __block NSString *testMediaAlbum = nil;
    __block NSString *testPlaylistName = nil;
    __block BOOL testIsExplicit = nil;
    __block int testTrackPlaybackProgress = 45;
    __block int testTrackPlaybackDuration = 3;
    __block int testQueuePlaybackProgress = 21;
    __block int testQueuePlaybackDuration = 5;
    __block int testQueueCurrentTrackNumber = 3;
    __block int testQueueTotalTrackCount = 56;

    beforeEach(^{
        testMediaType = SDLMediaTypePodcast;
        testMediaTitle = @"testMediaTitle";
        testMediaArtist = @"testMediaArtist";
        testMediaAlbum = @"testMediaAlbum";
        testPlaylistName = @"testPlaylistName";
        testIsExplicit = true;
    });

    it(@"Should set and get correctly", ^{
        SDLMediaServiceData *testStruct = [[SDLMediaServiceData alloc] init];
        testStruct.mediaType = testMediaType;
        testStruct.mediaTitle = testMediaTitle;
        testStruct.mediaArtist = testMediaArtist;
        testStruct.mediaAlbum = testMediaAlbum;
        testStruct.playlistName = testPlaylistName;
        testStruct.isExplicit = @(testIsExplicit);
        testStruct.trackPlaybackProgress = @(testTrackPlaybackProgress);
        testStruct.trackPlaybackDuration = @(testTrackPlaybackDuration);
        testStruct.queuePlaybackProgess = @(testQueuePlaybackProgress);
        testStruct.queuePlaybackDuration = @(testQueuePlaybackDuration);
        testStruct.queueCurrentTrackNumber = @(testQueueCurrentTrackNumber);
        testStruct.queueTotalTrackCount = @(testQueueTotalTrackCount);

        expect(testStruct.mediaType).to(equal(testMediaType));
        expect(testStruct.mediaTitle).to(equal(testMediaTitle));
        expect(testStruct.mediaArtist).to(equal(testMediaArtist));
        expect(testStruct.mediaAlbum).to(equal(testMediaAlbum));
        expect(testStruct.playlistName).to(equal(testPlaylistName));
        expect(testStruct.isExplicit).to(equal(testIsExplicit));
        expect(testStruct.trackPlaybackProgress).to(equal(testTrackPlaybackProgress));
        expect(testStruct.trackPlaybackDuration).to(equal(testTrackPlaybackDuration));
        expect(testStruct.queuePlaybackProgess).to(equal(testQueuePlaybackProgress));
        expect(testStruct.queuePlaybackDuration).to(equal(testQueuePlaybackDuration));
        expect(testStruct.queueCurrentTrackNumber).to(equal(testQueueCurrentTrackNumber));
        expect(testStruct.queueTotalTrackCount).to(equal(testQueueTotalTrackCount));
    });

    it(@"Should get correctly when initialized with a dictionary", ^{
        NSDictionary *dict = @{SDLNameMediaType:testMediaType,
                               SDLNameMediaTitle:testMediaTitle,
                               SDLNameMediaArtist:testMediaArtist,
                               SDLNameMediaAlbum:testMediaAlbum,
                               SDLNamePlaylistName:testPlaylistName,
                               SDLNameIsExplicit:@(testIsExplicit),
                               SDLNameTrackPlaybackProgress:@(testTrackPlaybackProgress),
                               SDLNameTrackPlaybackDuration:@(testTrackPlaybackDuration),
                               SDLNameQueuePlaybackProgess:@(testQueuePlaybackProgress),
                               SDLNameQueuePlaybackDuration:@(testQueuePlaybackDuration),
                               SDLNameQueueCurrentTrackNumber:@(testQueueCurrentTrackNumber),
                               SDLNameQueueTotalTrackCount:@(testQueueTotalTrackCount)
                               };
        SDLMediaServiceData *testStruct = [[SDLMediaServiceData alloc] initWithDictionary:dict];

        expect(testStruct.mediaType).to(equal(testMediaType));
        expect(testStruct.mediaTitle).to(equal(testMediaTitle));
        expect(testStruct.mediaArtist).to(equal(testMediaArtist));
        expect(testStruct.mediaAlbum).to(equal(testMediaAlbum));
        expect(testStruct.playlistName).to(equal(testPlaylistName));
        expect(testStruct.isExplicit).to(equal(testIsExplicit));
        expect(testStruct.trackPlaybackProgress).to(equal(testTrackPlaybackProgress));
        expect(testStruct.trackPlaybackDuration).to(equal(testTrackPlaybackDuration));
        expect(testStruct.queuePlaybackProgess).to(equal(testQueuePlaybackProgress));
        expect(testStruct.queuePlaybackDuration).to(equal(testQueuePlaybackDuration));
        expect(testStruct.queueCurrentTrackNumber).to(equal(testQueueCurrentTrackNumber));
        expect(testStruct.queueTotalTrackCount).to(equal(testQueueTotalTrackCount));
    });

    it(@"Should return nil if not set", ^{
        SDLMediaServiceData *testStruct = [[SDLMediaServiceData alloc] init];

        expect(testStruct.mediaType).to(beNil());
        expect(testStruct.mediaTitle).to(beNil());
        expect(testStruct.mediaArtist).to(beNil());
        expect(testStruct.mediaAlbum).to(beNil());
        expect(testStruct.playlistName).to(beNil());
        expect(testStruct.isExplicit).to(beNil());
        expect(testStruct.trackPlaybackProgress).to(beNil());
        expect(testStruct.trackPlaybackDuration).to(beNil());
        expect(testStruct.queuePlaybackProgess).to(beNil());
        expect(testStruct.queuePlaybackDuration).to(beNil());
        expect(testStruct.queueCurrentTrackNumber).to(beNil());
        expect(testStruct.queueTotalTrackCount).to(beNil());
    });
});

QuickSpecEnd

