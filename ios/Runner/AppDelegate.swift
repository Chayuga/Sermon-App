import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMServices.provideAPIKey("AIzaSyCMPjTlI0msxnzDEvdV5kI7ieXxpHSWLbU")
    GMSPlacesClient.provideAPIKey("AIzaSyCMPjTlI0msxnzDEvdV5kI7ieXxpHSWLbU")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
