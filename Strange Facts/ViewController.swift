//
//  ViewController.swift
//  Strange Facts
//
//  Created by Brandon Mahoney on 11/27/16.
//  Copyright © 2016 Brandon Mahoney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var strangeFactLabel: UILabel!
    @IBOutlet weak var strangeFactButton: UIButton!
    
    
    let factProvider = StrangeFacts().randomSequenceGenerator(min: 0, max: StrangeFacts().facts.count - 1)
    let colorProvider = BackgroundColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        strangeFactLabel.text = factProvider()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showFact() {
        strangeFactLabel.text = factProvider()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        strangeFactButton.tintColor = randomColor
    }
}


