//
//  EmojiDefinitionViewController.swift
//  EmjoiLaugh
//
//  Created by carson on 2019-03-01.
//  Copyright © 2019 carson. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    //  blank string that will contain emoji from tableViewController method 
    var emoji = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😀"{
            emojiDefinition.text = "This is the classic smiley face emoji"
        } else if emoji == "😂" {
            emojiDefinition.text = "This is the laughing crying emoji"
        } else if emoji == "😍" {
            emojiDefinition.text = "This is the IN LOVE emoji"
        } else if emoji == "😇" {
            emojiDefinition.text = "This is the angellic emoji"
        } else if emoji == "🍆" {
            emojiDefinition.text = "This is the Eggplant emoji"
        } else if emoji == "💿" {
            emojiDefinition.text = "Remember CD's? This is the CD emoji"
        } else if emoji == "📎" {
            emojiDefinition.text = "This is the paperclip emoji"
        } else if emoji == "⏱" {
            emojiDefinition.text = "This is the clock emoji"
        }
       
    }


}
