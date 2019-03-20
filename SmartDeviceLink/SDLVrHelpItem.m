//  SDLVRHelpItem.m
//


#import "SDLVrHelpItem.h"

#import "NSMutableDictionary+Store.h"
#import "SDLImage.h"
#import "SDLRPCParameterNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLVRHelpItem

- (instancetype)initWithText:(NSString *)text image:(nullable SDLImage *)image position:(UInt8)position {
    self = [self initWithText:text image:image];
    if (!self) {
        return nil;
    }

    self.position = @(position);

    return self;
}

- (instancetype)initWithText:(NSString *)text image:(nullable SDLImage *)image {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.text = text;
    self.image = image;

    return self;
}

- (void)setText:(NSString *)text {
    [store sdl_setObject:text forName:SDLRPCParameterNameText];
}

- (NSString *)text {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameText ofClass:NSString.class error:&error];
}

- (void)setImage:(nullable SDLImage *)image {
    [store sdl_setObject:image forName:SDLRPCParameterNameImage];
}

- (nullable SDLImage *)image {
    return [store sdl_objectForName:SDLRPCParameterNameImage ofClass:SDLImage.class];
}

- (void)setPosition:(NSNumber<SDLInt> *)position {
    [store sdl_setObject:position forName:SDLRPCParameterNamePosition];
}

- (NSNumber<SDLInt> *)position {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNamePosition ofClass:NSNumber.class error:&error];
}

@end

NS_ASSUME_NONNULL_END
