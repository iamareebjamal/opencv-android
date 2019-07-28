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

**Note:** Replace `<tag>` with actual release. See latest releases [here](https://github.com/iamareebjamal/opencv-android/releases)

### Releases

#### 4.x
- [4.1.1-contrib](https://jitpack.io/#iamareebjamal/opencv-android/4.1.1-contrib)
- [4.1.1](https://jitpack.io/#iamareebjamal/opencv-android/4.1.1)
- [4.1.0](https://jitpack.io/#iamareebjamal/opencv-android/4.1.0)
- [4.0.1](https://jitpack.io/#iamareebjamal/opencv-android/4.0.1)

#### 3.x
- [3.4.7-contrib](https://jitpack.io/#iamareebjamal/opencv-android/3.4.7-contrib)
- [3.4.7](https://jitpack.io/#iamareebjamal/opencv-android/3.4.7)
- [3.4.6](https://jitpack.io/#iamareebjamal/opencv-android/3.4.6)

**Note:** `-contrib` releases include extra contrib modules not found in core releases

### License
[OpenCV License](https://github.com/opencv/opencv/blob/master/LICENSE)
