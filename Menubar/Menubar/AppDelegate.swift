//
//  AppDelegate.swift
//  Menubar
//
//  Created by Adam Riggs on 8/11/14.
//  Copyright (c) 2014 Adam Riggs. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow!
    @IBOutlet var lblTitle: NSTextField!
    @IBOutlet var btnButton: NSButton!
    
    var buttonPresses = 0;
    
    var statusBar = NSStatusBar.systemStatusBar()
    var statusBarItem: NSStatusItem = NSStatusItem()
    var menu: NSMenu = NSMenu()
    var menuItem: NSMenuItem = NSMenuItem()
    
    override func awakeFromNib() {
        lblTitle.stringValue = "You've pressed the button \n \(buttonPresses) times!"
        
        //Add status bar item
        statusBarItem = statusBar.statusItemWithLength(-1)
        statusBarItem.menu = menu
        statusBarItem.title = "Presses"
        
        //Add menuItem to menu
        menuItem.title = "Clicked"
        menuItem.action = Selector("setWindowVisible:")
        menuItem.keyEquivalent = ""
        menu.addItem(menuItem)
        
        
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
        self.window!.orderOut(self)
    }
    
    @IBAction func buttonPressed(sender: NSButton) {
        buttonPresses += 1
        lblTitle.stringValue = "You've pressed the button \n \(buttonPresses) times!"
        menuItem.title = "Clicked \(buttonPresses)"
        statusBarItem.title = "Presses \(buttonPresses)"
        
    }
    
    func setWindowVisible(sender:AnyObject){
        self.window!.orderFront(self)
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}

