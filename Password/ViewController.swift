//
//  ViewController.swift
//  Password
//
//  Created by Robert P on 11.10.2022.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var passwordTextField: NSTextField!
    @IBOutlet weak var passwordLenghtTextField: NSTextField!
    @IBOutlet weak var passwordLenghtSlider: NSSlider!
    
    @IBOutlet weak var uppercase: NSButton!
    @IBOutlet weak var lowercase: NSButton!
    @IBOutlet weak var numbers: NSButton!
    @IBOutlet weak var symbols: NSButton!
    
    let generator = PasswordGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        generate()
        passwordLenghtTextField.stringValue = String(passwordLenghtSlider.intValue)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func copyToPasteboard(_ sender: NSButton) {
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(passwordTextField.stringValue, forType: .string)
    }
    
    @IBAction func refreshPassword(_ sender: Any) {
        generate()
    }
    
    @IBAction func sliderValueChanged(_ sender: NSSlider) {
        passwordLenghtTextField.stringValue = String(sender.intValue)
        generate()
    }
    
    private func generate() {
        passwordTextField.stringValue = generator.getPassword(lenght: Int(passwordLenghtSlider.intValue), uppercase: uppercase.isOn, lowercase: lowercase.isOn, numbers: numbers.isOn, symbols: symbols.isOn)
    }
    
}

