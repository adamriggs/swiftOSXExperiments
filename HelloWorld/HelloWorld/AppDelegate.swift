//
//  AppDelegate.swift
//  HelloWorld
//
//  Created by Adam Riggs on 8/10/14.
//  Copyright (c) 2014 Adam Riggs. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow
    @IBOutlet var txtFirst: NSTextField
    @IBOutlet var txtLast: NSTextField
    @IBOutlet var txtWhole: NSTextField
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }

    @IBAction func btnConcatenate(sender: AnyObject) {
        txtWhole.stringValue = txtFirst.stringValue + " " + txtLast.stringValue
    }

}

