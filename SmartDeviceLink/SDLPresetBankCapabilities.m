//  SDLPresetBankCapabilities.m
//


#import "SDLPresetBankCapabilities.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLPresetBankCapabilities

- (void)setOnScreenPresetsAvailable:(NSNumber<SDLBool> *)onScreenPresetsAvailable {
    [store sdl_setObject:onScreenPresetsAvailable forName:SDLRPCParameterNameOnScreenPresetsAvailable];
}

- (NSNumber<SDLBool> *)onScreenPresetsAvailable {
    NSError *error;
    return [store sdl_objectForName:SDLRPCParameterNameOnScreenPresetsAvailable ofClass:NSNumber.class error:&error];
}

@end

NS_ASSUME_NONNULL_END
