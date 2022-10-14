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

        passwordTextField.stringValue = PasswordGenerator.getPassword(lenght: 18, uppercase: true, lowercase: true, numbers: true, symbols: true)
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
        passwordTextField.stringValue = PasswordGenerator.getPassword(lenght: 18, uppercase: true, lowercase: true, numbers: true, symbols: true)
    }
    
    func controlTextDidChange(_ obj: Notification) {
        
    }
}

