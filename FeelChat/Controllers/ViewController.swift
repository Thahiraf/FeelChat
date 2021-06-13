//
//  ViewController.swift
//  FeelChat
//
//  Created by Thahi on 09/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "Feel⚡️Chat"
        for letter in titleText {
            print("-")
            print(0.1 * charIndex)
            print(letter)
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false){ (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }


}

