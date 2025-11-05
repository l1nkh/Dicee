//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Component Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var leftDiceNumber = 0;
    var rightDiceNumber = 5;

    @IBAction func rollBtnPressed(_ sender: UIButton) {
        print("Button was pressed!")
        
        // Build an array of available dice face images
        let diceImages: [UIImage] = [
            UIImage(resource: .diceOne),
            UIImage(resource: .diceTwo),
            UIImage(resource: .diceThree),
            UIImage(resource: .diceFour),
            UIImage(resource: .diceFive),
            UIImage(resource: .diceSix)
        ]
        
        // Randomize each die independently
        diceImageView1.image = diceImages.randomElement()
        diceImageView2.image = diceImages.randomElement()
        
        
        /* ANOTHER APPROACH TO RANDOMIZE
         var randomNum = Int.random(in: 0...5)
         diceImageView1.image = diceImages[Int.random(in: 0...5)]
         diceImageView1.image = diceImages[randomNum]
         */
    }
}
