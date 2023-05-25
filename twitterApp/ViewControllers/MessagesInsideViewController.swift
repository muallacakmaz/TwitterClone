//
//  MessagesInsideViewController.swift
//  twitterApp
//
//  Created by Mualla on 31.03.2023.
//

import UIKit

class MessagesInsideViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!

    @IBOutlet weak var messagesLabel: UILabel!
    
    @IBAction func sendMessageButtonTouched(_ sender: UIButton) {
        if let messageTextFromField = messageTextField.text{
            
            messages.append(NSAttributedString(string: "\n\n" + messageTextFromField, attributes: useFirstAttribute ? firstAttribute : secondAttribute))
            
            messagesLabel.attributedText = messages
        }
        
        useFirstAttribute = !useFirstAttribute
        messageTextField.text = nil
    }
    
    var messages = NSMutableAttributedString()
    
    let firstAttribute: [NSAttributedString.Key : Any] = [.foregroundColor : UIColor.black]
    let secondAttribute : [NSAttributedString.Key : Any] = [.foregroundColor : UIColor.systemCyan]
    
    var useFirstAttribute: Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messagesLabel.text = nil
        
    }

}
