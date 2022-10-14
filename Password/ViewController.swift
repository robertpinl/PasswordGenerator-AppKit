//
//  ViewController.swift
//  Password
//
//  Created by Robert P on 11.10.2022.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {

    @IBOutlet weak var passwordTextField: NSTextField!
    @IBOutlet weak var passwordLenghtTextField: NSTextField!
    @IBOutlet weak var passwordLenghtSlider: NSSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        passwordLenghtTextField.stringValue = "18"
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func copyToPasteboard(_ sender: NSButton) {
        
    }
    
    @IBAction func refreshPassword(_ sender: Any) {
        
    }
    
    func controlTextDidChange(_ obj: Notification) {
        
    }
}

