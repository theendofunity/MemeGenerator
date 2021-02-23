//
//  ViewController.swift
//  MemeMaker
//
//  Created by Admin on 23.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentControl: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureTopSegmentControl()
        configureButtomSegmentControl()
        selectInitValues()
    }

    func selectInitValues() {
        topCaptionSegmentControl.selectedSegmentIndex = 0
        bottomSegmentControl.selectedSegmentIndex = 0
        topLabel.text = topChoices.first?.text
        bottomLabel.text = bottomChoices.first?.text
    }
    
    func configureTopSegmentControl() {
        topCaptionSegmentControl.removeAllSegments()
        
        let option1 = CaptionOption(emoji: "🕶", text: "You know what's cool?")
        let option2 = CaptionOption(emoji: "🧟‍♀️", text: "You know what make me mad?")
        let option3 = CaptionOption(emoji: "💞", text: "You know what i love?")
        
        topChoices = [option1, option2, option3]
        
        for choise in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choise.emoji, at: topChoices.count, animated: false)
        }
    }

    func configureButtomSegmentControl() {
        bottomSegmentControl.removeAllSegments()
        
        let option1 = CaptionOption(emoji: "🐱", text: "Cats wearing hats")
        let option2 = CaptionOption(emoji: "🐶", text: "Dogs carrying logs")
        let option3 = CaptionOption(emoji: "🙉", text: "Monkeys being funky")
        
        bottomChoices = [option1, option2, option3]
        
        for choise in bottomChoices {
            bottomSegmentControl.insertSegment(withTitle: choise.emoji, at: bottomChoices.count, animated: false)
        }
    }
    
    //MARK: Actions
    
    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
    }
    
    @IBAction func buttomSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoise = bottomChoices[sender.selectedSegmentIndex]
        bottomLabel.text = currentChoise.text
    }
}

