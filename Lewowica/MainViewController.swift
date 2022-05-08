//
//  ViewController.swift
//  Lewowica
//
//  Created by Vladimir Pisarenko on 29.04.2022.
//

import UIKit

class MainViewController: UIViewController, UITabBarControllerDelegate {
    
    var words: [String: String] = [:]

    @IBOutlet var addWord: UITextField!
    @IBOutlet var addTranslate: UITextField!
    @IBOutlet var addWordStatusLabel: UILabel!
    @IBOutlet var addTranslateStatusLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.delegate = self
        addWordStatusLabel.text = "⬅️"
        addTranslateStatusLabel.text = "⬅️"
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.isKind(of: MainViewController.self as AnyClass) {
            let viewController = tabBarController.viewControllers?[1] as! LearnViewController
            viewController.wordsInCard = self.words
        }
        return true
    }

    func addWords() {
        
        if addWord.text != "" {
            if let enteredWord = addWord.text{
                addWordStatusLabel.text = "✅"
                if addTranslate.text != "" {
                    if let enteredTranslate = addTranslate.text{
                        addTranslateStatusLabel.text = "✅"
                        words.updateValue(enteredTranslate, forKey: enteredWord)
                        addWord.text?.removeAll()
                        addTranslate.text?.removeAll()
                    }
                } else {return}
            }
        } else {return}
    }

    @IBAction func addButtonTapped(_ sender: Any) {
        addWords()

        print(words)
    }
}

