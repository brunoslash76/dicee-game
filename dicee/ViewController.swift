//
//  ViewController.swift
//  dicee
//
//  Created by Bruno Russo on 05/04/19.
//  Copyright © 2019 Bruno Russo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = [
        "dice1",
        "dice2",
        "dice3",
        "dice4",
        "dice5",
        "dice6",
    ]

    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.updateDiceImages()
    }

    @IBAction func rollDiceBtnPress(_ sender: UIButton) {
        self.updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        dice1.image = UIImage(named: diceArray[randomDiceIndex1])
        dice2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        self.updateDiceImages()
    }
    
}

