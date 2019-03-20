//
//  SDLOnLockScreenStatus.m
//  SmartDeviceLink
//

#import "SDLOnLockScreenStatus.h"

#import "NSMutableDictionary+Store.h"
#import "SDLHMILevel.h"
#import "SDLLockScreenStatus.h"
#import "SDLRPCParameterNames.h"
#import "SDLRPCFunctionNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLOnLockScreenStatus

- (instancetype)init {
    if (self = [super initWithName:SDLRPCFunctionNameOnLockScreenStatus]) {
    }
    return self;
}

- (void)setLockScreenStatus:(SDLLockScreenStatus)lockScreenStatus {
    [parameters sdl_setObject:lockScreenStatus forName:SDLRPCParameterNameOnLockScreenStatus];
}

- (SDLLockScreenStatus)lockScreenStatus {
    NSError *error;
    return [parameters sdl_enumForName:SDLRPCParameterNameOnLockScreenStatus error:&error];
}

- (void)setHmiLevel:(SDLHMILevel)hmiLevel {
    [parameters sdl_setObject:hmiLevel forName:SDLRPCParameterNameHMILevel];
}

- (SDLHMILevel)hmiLevel {
    NSError *error;
    return [parameters sdl_enumForName:SDLRPCParameterNameHMILevel error:&error];
}

- (void)setUserSelected:(NSNumber<SDLBool> *)userSelected {
    [parameters sdl_setObject:userSelected forName:SDLRPCParameterNameUserSelected];
}

- (NSNumber<SDLBool> *)userSelected {
    NSError *error;
    return [parameters sdl_objectForName:SDLRPCParameterNameUserSelected ofClass:NSNumber.class error:&error];
}

- (void)setDriverDistractionStatus:(NSNumber<SDLBool> *)driverDistractionStatus {
    [parameters sdl_setObject:driverDistractionStatus forName:SDLRPCParameterNameDriverDistractionStatus];
}

- (NSNumber<SDLBool> *)driverDistractionStatus {
    NSError *error;
    return [parameters sdl_objectForName:SDLRPCParameterNameDriverDistractionStatus ofClass:NSNumber.class error:&error];
}

@end

NS_ASSUME_NONNULL_END
