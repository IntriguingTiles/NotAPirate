%hook NSFileManager

- (NSArray<NSString *> *)contentsOfDirectoryAtPath:(NSString *)path error:(NSError * _Nullable *)error {
	if ([path isEqualToString:@"/Library/MobileSubstrate/DynamicLibraries"]) {
		return [NSArray array];
	}

	return %orig;
}

%end