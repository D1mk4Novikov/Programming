//
//  InterfaceController.swift
//  Guess It WatchKit Extension
//
//  Created by Алексей Пархоменко on 17.04.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    @IBOutlet weak var myLabel: WKInterfaceLabel!
    @IBOutlet weak var myButton: WKInterfaceButton!
    
    let movies = FilmModel.getFilms()
    var element: FilmModel?
    var timer: Timer?
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        element = movies.randomElement()
        self.myLabel.setText("")
        self.myButton.setTitle(element?.emojis)
    }
    
    @IBAction func refreshAction() {
        myLabel.setText(element?.name)
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false, block: { (_) in
            self.element = self.movies.randomElement()
            self.myButton.setTitle(self.element?.emojis)
            self.myLabel.setText("")
        })
    }
}
