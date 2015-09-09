#!/bin/sh 

WORKSPECE_NAME="Swift2RX"
SCHEME_NAME="Swift2RX"
PROJECT_DIR="$HOME/Documents/iOS/Swift2RX"
DESTINATION="platform=iOS Simulator,name=iPhone 6"

XCODE_BUILD_COMMAND="xcodebuild -workspace $WORKSPECE_NAME.xcworkspace -scheme $SCHEME_NAME -sdk \"iphoneos\" -configuration Release ONLY_ACTIVE_ARCH=NO TEST_AFTER_BUILD=YES clean build"
XCODE_TEST_COMMAND="xcodebuild -workspace $WORKSPECE_NAME.xcworkspace -scheme $SCHEME_NAME -destination '$DESTINATION' clean test"

cd "$PROJECT_DIR"
pod install
eval $XCODE_TEST_COMMAND
eval $XCODE_BUILD_COMMAND
