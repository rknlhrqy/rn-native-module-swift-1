# rn-native-module-swift-1
Create the native module Counter using Swift in a React Native mobile app.<br>
<br>
# details
Sometimes you need to implement your own native module using Xcode. React Native supports to implement the native module using Objective-C. However more and more codes are developed using Swift in Xcode.<br>
<br>
This app uses the native module "Counter" which is developed in Xcode using Swift. This native module just increments or decrements a count. And this native module also supports the following features:<br>
<br>
1, Need to add a bridging header file to expose your target header file to Swift.<br>
2, Create an objective-C file to expose the Swift class to Javascript environment.<br>
3, Expose the static Swift data to JavaScript.<br>
4, Expose the Swift class methods to JavaScript. <br>
5, Expose the Swift class methods with callback to JavaScript.<br>
6, Expose the Swift class Promise to JavaScript. And use async/await on the Promise<br>
7, Expose the Swift Event Emitter to JavaScript.<br>
8, Extract the native module to JavaScfript.<br>
