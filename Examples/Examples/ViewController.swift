import Cocoa
import Foundation

class DudViewController: NSViewController {
    init() {
        super.init(nibName: nil, bundle: nil)!
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let windowWidth = 480.0
        let windowHeight = 360.0
        let buttonWidth = windowWidth / 3.0
        let buttonHeight = windowHeight / 5.0

        self.view = NSView.init(frame: NSRect(x: 0, y: 0, width: windowWidth, height: windowHeight))
        
        let buttonView = DudNSButton.init(frame: NSRect(x: (windowWidth / 2.0) - (buttonWidth/2.0), y: (windowHeight / 2.0) - (buttonHeight / 2.0), width: buttonWidth, height: buttonHeight))
        buttonView.setBackgroundColor(color: NSColor.blue)
        buttonView.setBorderAttributes(color: NSColor.black, borderWidth: 2.0, cornerRadius: 5.0)
        buttonView.setText(text: "Submit", font: NSFont.boldSystemFont(ofSize: 16.0), color: NSColor.white)
        self.view.addSubview(buttonView)
    }
}
