//
//  ViewController.swift
//  U-Cide
//
//  Created by Gilbert Nicholas on 29/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelStart: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.font = UIFont(name: "Baloo", size: 28)
        labelStart.font = UIFont(name: "Baloo", size: 20)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelStart.blink()
    }
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        self.performSegue(withIdentifier: "GamePageSegue", sender: self)
    }
}

extension UIView {
    func blink() {
        self.alpha = 0;
        UIView.animate(
            withDuration: 1,
            delay: 0,
            options: [.curveEaseInOut, .autoreverse, .repeat],
            animations: { self.alpha = 1 },
            completion: nil
        )
    }
}
