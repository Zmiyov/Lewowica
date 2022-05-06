//
//  ViewController.swift
//  Lewowica
//
//  Created by Vladimir Pisarenko on 29.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var words: [String: String] = [:]

    @IBOutlet var addWord: UITextField!
    @IBOutlet var addTranslate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func addWords() {
        if let enteredWord = addWord.text {
            if let enteredTranslate = addTranslate.text {
                words.updateValue(enteredTranslate, forKey: enteredWord)
            }
        }
        
    }

    @IBAction func addButtonTapped(_ sender: Any) {
        addWords()
        addWord.text?.removeAll()
        addTranslate.text?.removeAll()
        print(words)
    }
}

