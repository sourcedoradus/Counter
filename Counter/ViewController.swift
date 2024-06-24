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
    @IBOutlet weak var counterHistory: UITextView!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cleanAction(_ sender: Any) {
        if counter != 0 {
            counter = 0 }
        counterLabel.text = "Значение счётчика: \(counter)"
        counterHistoryLog(message: "значение сброшено")
    }
    
    @IBAction func minusOneAction(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterHistoryLog(message: "значение изменено на -1")
        } else {
            counterHistoryLog(message: "попытка уменьшить значение счётчика ниже 0")
        }
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction func plusOneAction(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
        counterHistoryLog(message: "значение изменено на +1")
    }
    
    func counterHistoryLog(message: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let timestamp = dateFormatter.string(from: Date())
        
        let logEntry = "[\(timestamp)]: \(message)\n"
        counterHistory.text.append(logEntry)
        
        let range = NSRange(location: counterHistory.text.count - 1, length: 0)
        counterHistory.scrollRangeToVisible(range)
    }
}

