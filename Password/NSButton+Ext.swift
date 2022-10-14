//
//  NSButton+Ext.swift
//  Password
//
//  Created by Robert P on 15.10.2022.
//

import AppKit

extension NSButton {
    var isOn: Bool {
        return self.state == .on
    }
}
