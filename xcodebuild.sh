xcodebuild -sdk iphoneos -arch arm64 -project jdk-11-arm64-ios.xcodeproj -scheme jdk-arm64-ios-debug
xcodebuild -sdk iphoneos -arch arm64 -project jdk-11-arm64-ios.xcodeproj -scheme jdk-arm64-ios-release

xcodebuild -sdk iphonesimulator -arch x86_64 -project jdk-11-arm64-ios.xcodeproj -scheme jdk-x86-64-ios-sim-debug
xcodebuild -sdk iphonesimulator -arch x86_64 -project jdk-11-arm64-ios.xcodeproj -scheme jdk-x86-64-ios-sim-release

lipo -info xcode/jdk-arm64-ios-d.a
lipo -info xcode/jdk-arm64-ios-r.a
lipo -info xcode/jdk-x86-64-ios-simulator-d.a
lipo -info xcode/jdk-x86-64-ios-simulator-r.a