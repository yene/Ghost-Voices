//
//  AppDelegate.swift
//  Ghost Voices
//
//  Created by Yannick Weiss on 11/12/15.
//  Copyright © 2015 Yannick Weiss. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!

	@IBOutlet var whisperTextView: NSTextView!

	@IBAction func beSpook(sender: AnyObject) {
		let text = whisperTextView.string
		let lines = text?.componentsSeparatedByString("\n")
		let c = UInt32((lines?.count)!)
		
		let diceRoll = Int(arc4random_uniform(c))
		
		Speak().speakString(lines![diceRoll])
		
		// TODO: put the applicatoin into invisible mode and speak the lines from time to time
		// TODO: check if you can render the voice lines into files and schedule them for the notification center to play
	}
	
	func applicationDidFinishLaunching(aNotification: NSNotification) {
		// Insert code here to initialize your application
	}

	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
	}


}

