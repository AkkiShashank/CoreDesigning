//
//  PlayerCell.swift
//  CoreConcepts
//
//  Created by Shashank Gupta on 15/06/16.
//  Copyright © 2016 Shashank Gupta. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var player: Player! {
        didSet {
            gameLabel.text = player.game
            nameLabel.text = player.name
            ratingImageView.image = imageForRating(player.rating)
        }
    }
    
    func imageForRating(rating:Int) -> UIImage {
        let imageName="\(rating)star"
        return UIImage(named: imageName)!
    }
}
