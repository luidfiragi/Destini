//
//  ViewController.swift
//  Destini
//
//  Created by Emerson Luiz Firagi on 27/01/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Vars
    
    var storyBrain = StoryBrain()
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var stroyLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    
    // MARK: - Life Cicle View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
    // MARK: - Functions
    
    func updateUi(){
        stroyLabel.text = storyBrain.getStoryTitle()
        choice1.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
    
    // MARK: - Actions
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUi()
    }
}
