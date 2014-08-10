//
//  AppDelegate.swift
//  RedditJSON
//
//  Created by Adam Riggs on 8/10/14.
//  Copyright (c) 2014 Adam Riggs. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow
    @IBOutlet var subreddit: NSTextField
    @IBOutlet var jsonTable: NSClipView
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }
    
    func getRedditJSON(sub:String){
        
    }

    @IBAction func getJSON(sender: AnyObject) {
        
    }

}

