//
//  MainViewControler.swift
//  CenterLabel
//
//  Created by IOS - Developer  on 22.04.2023.
//

import UIKit

struct Element {
    let symbol: String
    let name: String
}

class MainViewController: UIViewController {
    
    let elementList = ["Harley-Davison", "Mercedes", "Opel", "Porsche"]
    var currentElementIndex = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        func updateElement() {
            answerLabel.text = "?"
            let nameElement = elementList[currentElementIndex]
            let image = UIImage(named: nameElement)
            imageView.image = image
        }
    
    @IBAction func showAnswerButtonDidPressed(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func nextElementDidPressed(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
}

