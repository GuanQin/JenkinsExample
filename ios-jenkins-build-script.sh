#!/bin/sh 

WORKSPECE_NAME="JenkinsExample"
SCHEME_NAME="JenkinsExample"
PROJECT_DIR="$HOME/Documents/iOS/JenkinsExample"
DESTINATION="platform=iOS Simulator,name=iPhone 6"

XCODE_BUILD_COMMAND="xcodebuild -workspace $WORKSPECE_NAME.xcworkspace -scheme $SCHEME_NAME -sdk \"iphoneos\" -configuration Release ONLY_ACTIVE_ARCH=NO TEST_AFTER_BUILD=YES clean build"
XCODE_TEST_COMMAND="xcodebuild -workspace $WORKSPECE_NAME.xcworkspace -scheme $SCHEME_NAME -destination '$DESTINATION' clean test"

pwd
cd "$PROJECT_DIR"
pod install
eval $XCODE_TEST_COMMAND
eval $XCODE_BUILD_COMMAND
