#!/bin/bash

echo "🚀 Building Tamil Bible APK..."
echo "=================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    echo "Visit: https://nodejs.org/"
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "✅ Node.js and npm are installed"

# Install Capacitor CLI globally if not already installed
if ! command -v cap &> /dev/null; then
    echo "📦 Installing Capacitor CLI..."
    npm install -g @capacitor/cli
fi

echo "✅ Capacitor CLI is ready"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Initialize Capacitor if not already done
if [ ! -d "android" ]; then
    echo "🔧 Initializing Capacitor..."
    npx cap init "Tamil Bible" "com.tamilbible.app"
    npx cap add android
fi

# Sync web assets
echo "🔄 Syncing web assets..."
npx cap sync

# Build APK
echo "🔨 Building APK..."
npx cap build android

echo "✅ APK build completed!"
echo "📱 APK location: android/app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "To install on device:"
echo "1. Enable Developer Options on your Android device"
echo "2. Enable USB Debugging"
echo "3. Connect device via USB"
echo "4. Run: npx cap run android"
echo ""
echo "Or copy the APK file to your device and install manually."
