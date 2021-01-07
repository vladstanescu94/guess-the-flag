//
//  ViewController.swift
//  guess-the-flag
//
//  Created by Vlad Stanescu on 07.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstFlag: UIButton!
    @IBOutlet var secondFlag: UIButton!
    @IBOutlet var thirdFlag: UIButton!
    
    var countries = [String]()
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        setupFlags()
        askQuestion()
    }
    
    private func setupFlags() {
        firstFlag.layer.borderWidth = 1
        secondFlag.layer.borderWidth = 1
        thirdFlag.layer.borderWidth = 1
        
        firstFlag.layer.borderColor = UIColor.lightGray.cgColor
        secondFlag.layer.borderColor = UIColor.lightGray.cgColor
        thirdFlag.layer.borderColor = UIColor.lightGray.cgColor

        countries += [
            "estonia",
            "france",
            "germany",
            "ireland",
            "italy",
            "monaco",
            "nigeria",
            "poland",
            "russia",
            "spain",
            "uk",
            "us"
        ]
    }
    
    func askQuestion() {
        firstFlag.setImage(UIImage(named: countries[0]), for: .normal)
        secondFlag.setImage(UIImage(named: countries[1]), for: .normal)
        thirdFlag.setImage(UIImage(named: countries[2]), for: .normal)
    }


}

