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
    @IBOutlet var jsonTable: NSTableView
    
    var tableData = []
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }
    
    func getRedditJSON(reqString:String){
        let mySession = NSURLSession.sharedSession()
        let url:NSURL = NSURL(string:reqString)
        let networkTask = mySession.dataTaskWithURL(url, completionHandler : {data, response, error -> Void in
            var err:NSError?
            var theJSON = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as NSMutableDictionary
            let results : NSArray = theJSON["data"]!["children"] as NSArray
            dispatch_async(dispatch_get_main_queue(), {
                self.tableData = results
                self.jsonTable!.reloadData()
            })
        })
        networkTask.resume()
    }

    @IBAction func getJSON(sender: AnyObject) {
        var req = "http://reddit.com/"
        
        if(subreddit.stringValue != ""){
            req += "r/\(subreddit.stringValue)"
        }
        
        req += ".json"
        
        getRedditJSON(req)
    }

}

