//
//  TutorialViewController.swift
//  U-Cide
//
//  Created by Gilbert Nicholas on 04/05/21.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var tutorialImage: UIImageView!
    @IBOutlet weak var tutorialLabel: UILabel!
    
    var tutorial: String = "swipe card left or right to give your decision!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setContent()
    }
    
    func setContent() {
        tutorialLabel.font = UIFont(name: "Baloo", size: 21)
        tutorialLabel.text = tutorial
        tutorialImage.image = UIImage(named: "Tutorial")
    }
    
    @IBAction func tapTutorial(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }

}
