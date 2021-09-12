//
//  CommentCell.swift
//  MVC-N
//
//  Created by Dimka Novikov on 13.08.2021.
//  Copyright © 2021 //DDEC. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }
}
