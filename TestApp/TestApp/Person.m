//
//  Person.m
//  TestApp
//
//  Created by Andrey on 11/03/2021.
//

#import "Person.h"

@implementation Person


- (instancetype)initWithName:(NSString *)name
                     surname:(NSString *)surname
                         age:(NSNumber *)age {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surname;
        self.age = age;
        self.initialAge = age;
    }
    return self;
}

- (NSString *)fullName {
    return [self.name stringByAppendingString:self.surname];
}

- (NSNumber *)age {
    return self.initialAge;
}

- (void) addOneYearToAge {
    NSNumber* step = @1;
    self.initialAge = [NSNumber numberWithFloat:([self.initialAge floatValue] + [step floatValue])];
}

- (NSString*) description {
    [super description];
    NSString* string = [self.age stringValue];
    return [self.fullName stringByAppendingString:string];
}


@end
