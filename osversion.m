// osversion.m
// The Linux iOS toolchain used to build this fork does not ship compiler-rt's
// availability runtime (libclang_rt.ios.a), so the symbol emitted by every
// @available check has to be provided by the tweak itself.

#import <Foundation/Foundation.h>

int __isOSVersionAtLeast(int major, int minor, int patch) {
	static NSInteger cached[3] = { -1, -1, -1 };

	if (cached[0] < 0) {
		NSOperatingSystemVersion version = [[NSProcessInfo processInfo] operatingSystemVersion];
		cached[0] = version.majorVersion;
		cached[1] = version.minorVersion;
		cached[2] = version.patchVersion;
	}

	if (cached[0] != major) return (cached[0] > major) ? 1 : 0;
	if (cached[1] != minor) return (cached[1] > minor) ? 1 : 0;
	return (cached[2] >= patch) ? 1 : 0;
}
