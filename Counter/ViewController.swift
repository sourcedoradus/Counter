import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var counterPlusButton: UIButton!
    @IBOutlet private weak var counterMinusButton: UIButton!
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var cleanButton: UIButton!
    @IBOutlet private weak var counterHistory: UITextView!
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func cleanAction(_ sender: Any) {
        if counter != 0 {
            counter = 0 }
        counterLabel.text = "Значение счётчика: \(counter)"
        counterHistoryLog(message: "значение сброшено")
    }
    
    @IBAction private func minusOneAction(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterHistoryLog(message: "значение изменено на -1")
        } else {
            counterHistoryLog(message: "попытка уменьшить значение счётчика ниже 0")
        }
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction private func plusOneAction(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
        counterHistoryLog(message: "значение изменено на +1")
    }
    
    private func counterHistoryLog(message: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let timestamp = dateFormatter.string(from: Date())
        
        let logEntry = "[\(timestamp)]: \(message)\n"
        counterHistory.text.append(logEntry)
        
        let range = NSRange(location: counterHistory.text.count - 1, length: 0)
        counterHistory.scrollRangeToVisible(range)
    }
}

