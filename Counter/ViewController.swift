//
//  ViewController.swift
//  Counter
//
//  Created by Valentin Medvedev on 23.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterPlusButton: UIButton!
    @IBOutlet weak var counterMinusButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var cleanButton: UIButton!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clearAction(_ sender: Any) {
        if counter != 0 {
            counter = 0 }
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction func minusOneAction(_ sender: Any) {
        if counter > 0 {
            counter -= 1 }
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction func plusOneAction(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
    }
}
    

