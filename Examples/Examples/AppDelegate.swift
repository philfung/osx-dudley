//
//  AppDelegate.swift
//  Examples
//
//  Created by Philip Fung on 4/11/17.
//  Copyright © 2017 dudley. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let viewController = DudViewController.init()
        self.window.contentView = viewController.view
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

