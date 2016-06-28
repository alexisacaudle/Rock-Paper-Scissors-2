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

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func assignArrayString() {
        if (computerChoiceArrayNumber == 0) {
            computerChoiceString = "rock"
        }else if (computerChoiceArrayNumber == 1){
            computerChoiceString = "paper"
        }else{
            computerChoiceString = "scissors"
        }
        print("Computer:", computerChoiceString)
    }
    
    @IBAction func rockButton(sender: AnyObject) {
        assignArrayString()
        if (computerChoiceString == "rock"){
            print("It's a tie!")
            func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                let resultsVC : resultsScreen = segue.destinationViewController as! resultsScreen
                resultsVC.results = "It's a tie!"
            }
        }else if (computerChoiceString == "paper"){
            print("Computer wins ☹️")
            func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                let resultsVC : resultsScreen = segue.destinationViewController as! resultsScreen
                resultsVC.results = "Computer wins ☹️"
            }
        }else{
            print("You win! 😀🎉")
            func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
                let resultsVC : resultsScreen = segue.destinationViewController as! resultsScreen
                resultsVC.results = "You win! 😀🎉"
            }
        }
    }
    @IBAction func paperButton(sender: AnyObject) {
    }
    @IBAction func scissorsButton(sender: AnyObject) {
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


//MARK : resultsScreen class
class resultsScreen: UIViewController{
    
    var results = String()
    
    @IBOutlet weak var computerResultsLabel: UILabel!
    
    @IBOutlet weak var gameResultsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameResultsLabel.text = results
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



