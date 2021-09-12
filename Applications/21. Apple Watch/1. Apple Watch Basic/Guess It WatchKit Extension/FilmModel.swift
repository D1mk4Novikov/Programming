//
//  FilmModel.swift
//  Guess It WatchKit Extension
//
//  Created by Алексей Пархоменко on 17.04.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

struct FilmModel {
    var emojis: String
    var name: String
    
    static func getFilms() -> [FilmModel] {
        return [FilmModel(emojis: "💎✋", name: "Брилиантовая рука"),
                FilmModel(emojis: "🎩🍀", name: "Джентельмены удачи"),
                FilmModel(emojis: "🔨☁️☁️☁️", name: "Достучаться до небес"),
                FilmModel(emojis: "💼🐻👨‍👩‍👦", name: "Кристофер Робин"),
                FilmModel(emojis: "🌍🐒🐒🐒", name: "Планета обезьян")
        ]
    }
}
