//
//  AppDelegate.swift
//  macapp
//
//  Created by v on 2020/11/17.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: WindowController?


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        mainWindowController = WindowController(contentSize: NSSize(width: 400, height: 270))
        mainWindowController?.contentViewController = ViewController()
        mainWindowController?.showWindow(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

