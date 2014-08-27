//
//  AppDelegate.swift
//  UITest
//
//  Created by Adam Riggs on 8/26/14.
//  Copyright (c) 2014 Adam Riggs. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow
    
    @IBOutlet var firstNumber: NSTextField
    @IBOutlet var secondNumber: NSTextField
    @IBOutlet var total: NSTextField

    @IBAction func item1(sender: AnyObject) {
        println("Item 1")
    }
    @IBAction func menuItem(sender: AnyObject) {
        println("TestItem selected from the menu")
    }
    @IBAction func calculateTotal(sender: AnyObject) {
        var first:Int = firstNumber.integerValue
        var second:Int = secondNumber.integerValue
        total.stringValue = String(first + second)
    }
    
    @IBAction func ButtonAction(sender: AnyObject) {
        println("ButtonClicked")
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}

