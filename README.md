# osx-dudley
### Utilities for OSX Cocoa, mainly stuff in IOS that is missing in OSX. ###

### DudNSButton ###
  NSButton is very different from UIButton has few styling methods exposed.
  This is a subclass of NSButton that allows easy setting of background color, border attributes, and text attributes.
  Usage:
>       let buttonView = DudNSButton.init(frame: NSRect(x: 0, y: 0, width: 300.0, height: 150.0))
>       buttonView.setBackgroundColor(color: NSColor.blue)
>       buttonView.setBorderAttributes(color: NSColor.black, borderWidth: 2.0, cornerRadius: 5.0)
>       buttonView.setText(text: "Submit", font: NSFont.boldSystemFont(ofSize: 16.0), color: NSColor.white)


MIT License
