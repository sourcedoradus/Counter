//
//  ViewController.swift
//  Counter
//
//  Created by Valentin Medvedev on 23.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusOneAction(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
    }
}
    

