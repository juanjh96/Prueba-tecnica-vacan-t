# prueba_tecnica_juan

Prueba tecnica de Juan Manuel para VancanT


### Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider) (State Management)

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test

Here is the folder structure we have been using in this project

```
lib/
|- data/
|- domain/
|- presentation/
|- static/
|- main.dart


clean architecture was applied

## How to debug
- flutter run
## How to Compile
- flutter clean
- flutter pub get
# Compile bundle
- flutter build appbundle --release
# Compile apk
- flutter build apk
# Compile ios
- flutter build ios

## How to Compile IOS
- flutter packages get
- flutter clean
- cd ios
- pod install
- open Runner.xcworkspace
- (Runner -> Targets->Runner General -> set signing)
- (Runner -> generic ios Device)
- product -> Archive
- for compile
- cd ..
- flutter build ios
- open -a Simulator
- flutter run
- For UTF error add these to ~/.profile or /etc/profile
- export LC_ALL=en_US.UTF-8
- export LANG=en_US.UTF-8

finally i solved this issue with below steps
1. export LANG=en_US.UTF-8
2. opened project in Xcode and cleaned it.
3. opened iOS folder in mac terminal and ran pod install
4. it gave me warming of using ios 9.0 so i updated it to 10.0
5. ran flutter build iOS
6. project build successfully
7. opened Runner.xcworkspace in xode
8. clicked on run - this time Xcode again installed pod automatically
and Solved.
