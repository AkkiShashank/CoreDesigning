//
//  Player.swift
//  CoreConcepts
//
//  Created by Shashank Gupta on 15/06/16.
//  Copyright © 2016 Shashank Gupta. All rights reserved.
//

import UIKit

struct Player {
    var name:String
    var game:String
    var rating:Int
    
    init(name:String,game:String,rating:Int){
        self.name=name
        self.game=game
        self.rating=rating
    }
}