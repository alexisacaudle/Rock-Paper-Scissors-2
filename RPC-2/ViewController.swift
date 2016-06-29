//
//  ViewController.swift
//  RPC-2
//
//  Created by Alexis Caudle on 6/24/16.
//  Copyright © 2016 Alexis Caudle. All rights reserved.
//

import UIKit

let computerChoiceArray = ["rock", "paper", "scissors"]
let computerChoiceArrayNumber = Int(arc4random_uniform(UInt32(computerChoiceArray.count)))
var computerChoiceString = String()
var userChoice = String()
var results = String()

class ViewController: UIViewController {

    @IBAction func rockButton(sender: AnyObject) {
        userChoice = "rock"
        assignArrayString()
    }
    
    @IBAction func paperButton(sender: AnyObject) {
        userChoice = "paper"
        assignArrayString()
    }
    @IBAction func scissorsButton(sender: AnyObject) {
        userChoice = "scissors"
        assignArrayString()
    }
    
    func assignArrayString() {
        if (computerChoiceArrayNumber == 0) {
            computerChoiceString = "rock"
            if (userChoice == "rock"){
                results = "It's a tie"
                print("It's a tie")
            }else if(userChoice == "paper"){
                results = "You win!"
                print("You win!")
            }else{
                results = "You win!"
                print("Computer wins")
            }
            print("Computer:", computerChoiceString)
        }else if (computerChoiceArrayNumber == 1){
            computerChoiceString = "paper"
            if (userChoice == "rock"){
                results = "Computer wins"
                print("Computer wins")
            }else if(userChoice == "paper"){
                results = "It's a tie"
                print("It's a tie")
            }else{
                results = "You win!"
                print("You win!")
            }
            print("Computer:", computerChoiceString)
        }else{
            computerChoiceString = "scissors"
            if (userChoice == "rock"){
                results = "You win!"
                print("You win!")
            }else if(userChoice == "paper"){
                results = "Computer wins"
                print("Computer wins")
            }else{
                results = "It's a tie"
                print("It's a tie")
            }
            print("Computer:", computerChoiceString)
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultsVC : resultsScreen = segue.destinationViewController as! resultsScreen
        resultsVC.sentResultsString = results
        resultsVC.computerChoiceString = computerChoiceString
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


//MARK : resultsScreen class
class resultsScreen: UIViewController{
    
    var sentResultsString = String()
    var computerChoiceString = String()
    
    @IBOutlet weak var computerResultsLabel: UILabel!
    
    @IBOutlet weak var gameResultsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameResultsLabel.text = sentResultsString
        computerResultsLabel.text = "The computer chose \(computerChoiceString)!"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}



