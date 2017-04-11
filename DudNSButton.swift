//
//  DudNSButton.swift
//
//  Created by Philip Fung on 4/11/17.
//
//  Usage:
//  
//  let buttonView = DudNSButton.init(frame: NSRect(x: 0, y: 0, width: 300.0, height: 150.0))
//  buttonView.setBackgroundColor(color: NSColor.blue)
//  buttonView.setBorderAttributes(color: NSColor.black, borderWidth: 2.0, cornerRadius: 5.0)
//  buttonView.setText(text: "Submit", font: NSFont.boldSystemFont(ofSize: 16.0), color: NSColor.white)
//
//  MIT License

import Cocoa
import Foundation

class DudNSButton: NSButton {
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        self._commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self._commonInit()
    }
    
    func setBackgroundColor(color: NSColor) {
        self.image = self._createBackgroundImage(color: color)
    }
    
    func setText(text: String, font: NSFont, color: NSColor) {
        let paragraphStyle = NSMutableParagraphStyle.init()
        paragraphStyle.alignment = .center
        let range = NSRange.init(location: 0, length: (text.lengthOfBytes(using: String.Encoding.utf8)))
        let attributedTitle = NSMutableAttributedString.init(string: text)
        attributedTitle.addAttribute( NSParagraphStyleAttributeName, value: paragraphStyle, range: range)
        attributedTitle.addAttribute(NSForegroundColorAttributeName, value: color, range: range)
        attributedTitle.addAttribute(NSFontAttributeName, value: font, range: range)
        self.attributedTitle = attributedTitle
    }
    
    func setBorderAttributes(color: NSColor,
                             borderWidth: CGFloat,
                             cornerRadius: CGFloat) {
        self.isBordered = true
        self.layer?.masksToBounds = true
        self.layer?.borderColor = color.cgColor
        self.layer?.borderWidth = borderWidth
        self.layer?.cornerRadius = cornerRadius
    }
    
    private func _commonInit() {
        self.cell = NSButtonCell()
        self.wantsLayer = true
    }
    
    private func _createBackgroundImage(color: NSColor)->NSImage {
        let size = self.frame.size
        let image = NSImage(size: size)
        image.lockFocus()
        let rect = NSMakeRect(0, 0, size.width, size.height)
        color.drawSwatch(in: rect)
        image.unlockFocus()
        return image
    }
}

