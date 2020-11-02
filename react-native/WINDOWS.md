# Installation

### Requirements

1. Node
1. Android Studio.

### Installing Node

1. [Download Node](https://nodejs.org/en/download/) (choose Node version LTS/Current).
1. Run the installer.
1. Verify the installation by running
```zsh
node --v
npm --v
```

### Setting up Android Studio

1. Download [Android Studio](https://developer.android.com/studio) and follow the instructions as guided by the application for installation.
1. After proper installation, add virtual device by navigating to the `AVD manager` located at the top-right corner of the toolbar with an android icon.
1. Follow the steps as suggested by the `AVD manager` to set up the virtual device on the application.
1. After successfully adding a virtual device to the application, navigate to the `SDK manager` located besides `AVD manager`.
1. Choose `Android 10(R and Q)` or `greater than Android 10` both from `SDK platforms tab`, and move to the `SDK tools tab`.
1. Select `SDK Build-tools`, `NDK(side-by-side)`, `Android SDK Command-line Tools (Latest)`, `Android Emulator` followed by `Android SDK Platform-tools`, `Google Play APK Expansion Library`, `Google Play Instant Development SDK`, `Google Play Licensing Library`, `Google Play Services` and `Intel x86 Emulator Accelerator(HAXM installer)` or `Android Emulator Hypervisor Driver for AMD Processors` (optional depends upon the machine).
```zsh
NOTE: Maximum tools will be installed by default.
```
7. After selecting all the appropriate options, install and hit `apply` followed by the `ok` button.


### Configuring the environment

1. Go to `This PC` => `Properties` => `Advanced System Settings` => `Environment Variables` => `New (System Environment)`.
1. Add `ANDROID_HOME` as a variable and add path at the variable path which is similar to the `C:\Users\username\AppData\Local\Android\sdk`.
1. Add `C:\Users\username\AppData\Local\Android\platform-tools` to the `PATH` variable.
1. Add `JAVA_HOME` as a variable and add path at the variable path which is similar to the `C:\Program Files\Android\Android Studio\jre` or wherever your Android Studio is installed.

### Working with the project

1. Clone the project repository, and run `npm install`.
1. Open the existing project in the `Android Studio` by choosing the `open existing project` option from the main menu.
1. Run `sync project with Gradle files` which will be located besides `AVD manager` on the `toolbar`.
1. Install `npx` with the help of npm by using `npm install -g npx`.
1. Run `npx react-native start` to start the `metro bundler` inside your project repository.
1. Finally, run `npx react-native run-android` to run the project.

