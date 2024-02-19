import UIKit
import Flutter

import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
    GMSServices.provideAPIKey("AIzaSyCaa57jXGT1LEQcHYAR6pEwC9Iy4eBcdcw")
    GeneratedPluginRegistrant.register(with: self)
   
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
