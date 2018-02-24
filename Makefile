PREFIX?=/usr/local
VERSION=$(shell /usr/libexec/PlistBuddy -c "Print :CFBundleShortVersionString" Yebisw.xcodeproj/Yebisw_Info.plist)
XCCONFIG_PATH=Yebisw.xcconfig

build:
	swift build -c release -Xswiftc -static-stdlib

install: build
	mkdir -p "$(PREFIX)/bin"
	cp -f ".build/release/yebiswgen" "$(PREFIX)/bin/yebiswgen"

set_version:
	agvtool new-marketing-version ${VERSION}
	sed -i '' -e 's/current = ".*"/current = "${VERSION}"/g' Sources/YebiswGenSupport/Version.swift

generate_xcodeproj:
	swift package generate-xcodeproj --xcconfig-overrides ${XCCONFIG_PATH}
