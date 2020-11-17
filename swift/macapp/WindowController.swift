//
//  WindowController.swift
//  macapp
//
//  Created by v on 2020/11/17.
//

import Cocoa

class WindowController: NSWindowController, NSWindowDelegate {

    override var contentViewController: NSViewController? {
        willSet {
            if let newValue = newValue, let window = window {
                var frame = window.frame
                frame.origin = .zero
                newValue.view.frame = frame
            }
        }
    }

    convenience init(contentSize size: NSSize) {
        let styleMask: NSWindow.StyleMask = [.closable, .miniaturizable, .resizable,
                                             .titled, .unifiedTitleAndToolbar, .fullSizeContentView]

        let frame = NSRect(x: 0, y: 0, width: size.width, height: size.height)
        let window = NSWindow(contentRect: frame,
                              styleMask: styleMask,
                              backing: .buffered,
                              defer: true)
        
        window.titlebarAppearsTransparent = true

        self.init(window: window)

        window.delegate = self
    }

    override func showWindow(_ sender: Any?) {
        window?.center()
        super.showWindow(sender)
    }
}
