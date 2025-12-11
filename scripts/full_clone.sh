#!/bin/bash
set -e

TARGET_REPO=https://android.googlesource.com/platform/manifest

mkdir -p android_full
cd android_full

echo "[Clone] Fetching ALL sources (this will fail or succeed, both OK)..."
repo init -u $TARGET_REPO || true
repo sync || true
