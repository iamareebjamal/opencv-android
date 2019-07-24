#!/bin/bash

set -e

# Download OpenCV Android SDK

opencv_version="4.1.1"
opencv_sdk_zip="cache/opencv-android-sdk.zip"

if [[ $1 = "--skip-download" ]]; then
    echo "Skipping Download of ${opencv_sdk_zip}..."
else
    echo "Downloading ${opencv_sdk_zip}..."
    download_url="https://pullrequest.opencv.org/buildbot/export/opencv_releases/master-contrib_pack-contrib-android/20190624-040932--10839/OpenCV4Android.zip"
    echo "Download URL: ${download_url}"
    wget -c -O ${opencv_sdk_zip} ${download_url}
fi

# Verify that file is present or downloaded
if [[ ! -f ${opencv_sdk_zip} ]]; then
    echo "${opencv_sdk_zip} not found... Either download failed or skipped..."
    exit 1
fi

echo "Unzipping OpenCV SDK..."
unzip -qqo ${opencv_sdk_zip} -d opencv_sdk
echo "Moving files in correct place..."
cp -r opencv_sdk/OpenCV-android-sdk/sdk/* opencv/
echo "Skipping Lint... (To be removed when fixed)"
echo "android { lintOptions { abortOnError false } }" >> opencv/build.gradle

echo "Cleaning Up..."
rm -rf opencv_sdk
