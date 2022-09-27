# Smart Visiting Card

A new Flutter project.

About
> This application will help you to generate QR code on the basis of the details entered by user and also scan any QR code which will redirect the registered user to the respective url of the QR code scanned.
> Application consists of 3 pages:
> 1. Registration Page
> 2. Home Page
> 3. QR Scanning Page

Prerequisites
> Mac : XCode, Android Studio, Flutter, Emulator  
> Windows : Android Studio, Emulator, Flutter

Packages Used
> Install dependencies from pubspec.yaml file by running **flutter pub get** in CMD
> * get_storage - ^2.0.3
> * barcode_widget - ^1.5.0
> * qr_code_scanner - ^1.0.1
> * url_launcher - ^6.1.5

Installation
> Method - 1 : Download apk and install it in your device.  
> Method - 2 : In VS Code :
> * Clone the Repository
> * Run the command - flutter pub get
> * Open the emulator (iOS or Android)
> * Run the CLI Command - flutter run  
> App will be launched in the emulator

Usage
> * Once the user has downloaded and installed the application, user will be redirected to the Registration Page first.
> * User will have to enter Name, Email ID (Valid) and the LinkedIn Profile ID based on which the QR will be generated after registering.
> * Navigating to Home Page after registering, we will have the generated QR Code and the button to expand the network by connecting to other users.
> * On clicking Expand your network, User will be navigated to the page which will provide the option to scan the Virtual QR Code.
> * * Once scanned, user will be redirected to the respective URL if the QR Code is a valid QR Code.
> * * Alongside, User can pause and resume the camera as per the requirement
> * * Camera can be flipped front or back on the basis of the requirement from where the user wants to scan the QR Code
> * Next, the user will be on the redirected URL and can perform the actions needed.

### HAPPY CONNECTING!
