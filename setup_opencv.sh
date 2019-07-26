#!/bin/bash

set -e

# Download OpenCV Android SDK

opencv_version="3.4.7"
opencv_sdk_zip="cache/opencv-android-sdk.zip"

if [[ $1 = "--skip-download" ]]; then
    echo "Skipping Download of ${opencv_sdk_zip}..."
else
    echo "Downloading ${opencv_sdk_zip}..."
    download_url="https://github.com/opencv/opencv/releases/download/${opencv_version}/opencv-${opencv_version}-android-sdk.zip"
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
