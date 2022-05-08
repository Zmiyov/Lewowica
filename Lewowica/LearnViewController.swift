//
//  LearnViewController.swift
//  Lewowica
//
//  Created by Vladimir Pisarenko on 07.05.2022.
//

import UIKit

class LearnViewController: UIViewController {
    
    var wordsInCard: [String: String] = NSDictionary
    
    @IBOutlet var buttonCardText: UIButton!
    
    @IBOutlet var cardTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func newWordCard() {
       //помещать ключи в массив, выбирать рандомно ключи и для них показывать значение
        let randomWord = [String](words.keys)
        let currentKey = randomWord.randomElement() //shuffled()
        let translateForCurrentKey = words[currentKey]
    }

    @IBAction func tapCardTextLabel(_ sender: Any) {
        
    }
    
    @IBAction func buttonCardTapped(_ sender: Any) {
        
    }
}
