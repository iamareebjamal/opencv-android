## Open CV for Android

> Auto building aar for OpenCV Android SDK

[![CircleCI](https://img.shields.io/circleci/build/github/iamareebjamal/opencv-android.svg)](https://circleci.com/gh/iamareebjamal/opencv-android/)
[![JitPack - Downloads](https://img.shields.io/jitpack/dm/github/iamareebjamal/opencv-android.svg)](https://jitpack.io/#iamareebjamal/opencv-android)
[![](https://jitpack.io/v/iamareebjamal/opencv-android.svg)](https://jitpack.io/#iamareebjamal/opencv-android)


### Usage

Add JitPack repo at last in root build.gradle repositories block if not already added

```groovy
allprojects {
    repositories {
        ...
        maven { url 'https://jitpack.io' }
    }
}
```

Add the dependency in app/build.gradle
```groovy

dependencies {
    implementation 'com.github.iamareebjamal:opencv-android:<tag>'
}
```

**Note:** Replace `<tag>` with actual release. See latest release on the badge on top of README 

### License
[OpenCV License](https://github.com/opencv/opencv/blob/master/LICENSE)
