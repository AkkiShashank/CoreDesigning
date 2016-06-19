//
//  PlayerDetailsViewController.swift
//  CoreConcepts
//
//  Created by Shashank Gupta on 19/06/16.
//  Copyright © 2016 Shashank Gupta. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    var player:Player?
    
    var game:String="Chess" {
        didSet {
            detailLabel.text?=game
        }
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section==0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier=="savePlayersDetail" {
            player=Player(name: nameTextField.text!, game:game, rating: 1)
        }
        
        if segue.identifier=="PickGame" {
            if let gamePickerViewController=segue.sourceViewController as? GamePickerViewController{
                gamePickerViewController.selectedGame=game
            }
        }
    }
    
    @IBAction func unwindWithSelectionGame(segue:UIStoryboardSegue){
        if let gamePickerViewController=segue.sourceViewController as? GamePickerViewController{
            if let selectedGame=gamePickerViewController.selectedGame{
                game=selectedGame
            }
        }
    }
}
