//
//  NewEmojiTableViewController.swift
//  Emoji Reader
//
//  Created by Dimka Novikov on 07.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
        self.updateSaveButtonState()
    }
    
    private func updateSaveButtonState() -> Void {
        let emojiText = self.emojiTextField.text ?? ""
        let nameText = self.nameTextField.text ?? ""
        let desctiptionText = self.descriptionTextField.text ?? ""
        
        self.saveButton.isEnabled = (!emojiText.isEmpty && !nameText.isEmpty && !desctiptionText.isEmpty)
    }
    
    private func updateUI() -> Void {
        self.emojiTextField.text = emoji.emoji
        self.nameTextField.text = emoji.name
        self.descriptionTextField.text = emoji.description
    }

    @IBAction func textChanged(_ sender: UITextField) {
        self.updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "SaveSegue" else { return }
        
        let emoji = self.emojiTextField.text ?? ""
        let name = self.nameTextField.text ?? ""
        let description = self.descriptionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavourite: self.emoji.isFavourite)
    }
    
}
