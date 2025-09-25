# பரிசுத்த வேதாகமம் - Tamil Bible APK

A complete offline Tamil Bible app that can be built as an Android APK.

## 🚀 Quick APK Build

### Method 1: Using Capacitor (Recommended)

1. **Install Node.js** (if not already installed):
   ```bash
   # Download from https://nodejs.org/
   ```

2. **Run the build script**:
   ```bash
   ./build-apk.sh
   ```

3. **Install APK**:
   - APK will be created at: `android/app/build/outputs/apk/debug/app-debug.apk`
   - Copy to your Android device and install

### Method 2: Manual Steps

1. **Install Capacitor**:
   ```bash
   npm install -g @capacitor/cli
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Initialize Capacitor**:
   ```bash
   npx cap init "Tamil Bible" "com.tamilbible.app"
   npx cap add android
   ```

4. **Sync and build**:
   ```bash
   npx cap sync
   npx cap build android
   ```

### Method 3: Using Android Studio

1. Follow Method 2 steps 1-3
2. Open Android Studio:
   ```bash
   npx cap open android
   ```
3. In Android Studio: Build → Build Bundle(s) / APK(s) → Build APK(s)

## 📱 App Features

- ✅ **Complete Offline Functionality** - Works without internet
- ✅ **Swipe-to-Refresh** - Pull down to refresh content
- ✅ **Search Across All Books** - Find verses instantly
- ✅ **Favorites System** - Save favorite verses
- ✅ **Notes System** - Add personal notes
- ✅ **Verse Sharing** - Share verses via any app
- ✅ **Last Read Position** - Remembers where you left off
- ✅ **Touch Interactions** - Tap verses for actions
- ✅ **PWA Ready** - Installable as web app

## 🔧 Technical Details

- **Framework**: Pure HTML/CSS/JavaScript
- **Offline Storage**: localStorage + Service Worker
- **APK Builder**: Capacitor
- **Target**: Android 5.0+ (API 21+)
- **Size**: ~2-3 MB (all Bible data included)

## 📋 Prerequisites

- Node.js 16+ 
- npm
- Android Studio (for advanced builds)
- Android device or emulator

## 🎯 APK Installation

1. **Enable Developer Options** on your Android device
2. **Enable USB Debugging**
3. **Connect device** via USB
4. **Run**: `npx cap run android` (installs directly)

Or manually install the APK file from the build output.

## 🌐 PWA Installation

The app also works as a Progressive Web App:
1. Open in Chrome/Edge
2. Click "Install" in address bar
3. App installs like a native app

## 📁 File Structure

```
Tamil-Bible/
├── index.html          # Main app file
├── manifest.json       # PWA manifest
├── sw.js              # Service worker
├── package.json       # Node.js dependencies
├── capacitor.config.json # Capacitor config
├── build-apk.sh       # Build script
└── *.json            # Bible data files
```

## 🐛 Troubleshooting

**Build fails?**
- Ensure Node.js 16+ is installed
- Run `npm install` first
- Check Android SDK is installed

**APK won't install?**
- Enable "Unknown Sources" in Android settings
- Check device has enough storage
- Try different Android device

**App crashes?**
- Check browser console for errors
- Ensure all JSON files are present
- Test in web browser first

## 📞 Support

For issues or questions, check the browser console for error messages.

---

**Built with ❤️ for Tamil Bible readers**
