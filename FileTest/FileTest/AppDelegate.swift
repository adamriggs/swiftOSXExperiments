//
//  AppDelegate.swift
//  FileTest
//
//  Created by Adam Riggs on 8/23/14.
//  Copyright (c) 2014 Adam Riggs. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow
    
    //var file:NSString = "/Users/adam/Documents/Experiments/swift/osx/swiftOSXExperiments/FileTest/test.txt"
    
    var data:NSData = NSFileManager.defaultManager().contentsAtPath("/Users/adam/Documents/Experiments/swift/osx/swiftOSXExperiments/FileTest/test.txt")
    
    var stream:NSInputStream = NSInputStream.inputStreamWithFileAtPath("/Users/adam/Documents/Experiments/swift/osx/swiftOSXExperiments/FileTest/test.txt")

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
        println(data)
        
        stream.open()
        var buffer = [UInt8](count: 8, repeatedValue: 0)
        if stream.hasBytesAvailable {
            let result :Int = stream.read(&buffer, maxLength: buffer.count)
            println(result)
        }
        
        //***** this works for files
        let file = "test.txt"
//        
//        let dirs : [String]? = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as? [String]
//        let directories = dirs
        
        let dir = "/Users/adam/Documents/Experiments/swift/osx/swiftOSXExperiments/FileTest/" //documents directory
        let path = dir.stringByAppendingPathComponent(file);
        let text = "Hello World!"
            
        //writing
        text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
            
        //reading
        let text2 = String.stringWithContentsOfFile(path, encoding: NSUTF8StringEncoding, error: nil)
        println(text2)
        //***** end
        
        //***** this doesn't work yet
        let bundle = NSBundle.mainBundle()
        let path2 = bundle.pathForResource("test", ofType: "txt")
        println(path2)  //nil
        let content = NSString.stringWithContentsOfFile(path2, encoding: NSUTF8StringEncoding, error: nil)
        
        println(content) // prints the content of data.txt
        //***** end
        
    }
    
    func fileError(NSString:NSError){
        
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}

