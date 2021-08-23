//
//  GamePageController.swift
//  U-Cide
//
//  Created by Gilbert Nicholas on 01/05/21.
//

import UIKit
import AVFoundation

class GamePageController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var lblOption: UILabel!
    @IBOutlet weak var resetBtn: UIButton!
    
    var sound: AVAudioPlayer!
    var divisor: CGFloat!
    var questionUsed: question = question()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        divisor = (view.frame.width / 2) / 0.3

        loadQuestion(idx: 0)
        setCardView()
        setContent()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            self.performSegue(withIdentifier: "tutorialSegue", sender: self)
        }
    }
    
    func loadQuestion(idx: Int) {
        questionUsed = question.getQuestion(id: idx)
    }
    
    func setCardView() {
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 1
        cardView.layer.shadowOffset = .zero
        cardView.layer.shadowRadius = 10
        cardView.layer.cornerRadius = 29
        
//        secondCardView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 29)
    }
    
    func setContent() {
        labelQuestion.font = UIFont(name: "Baloo", size: 24)
        labelQuestion.text = questionUsed.questionLabel
        
        imageView.image = UIImage(named: questionUsed.image)
        
        resetBtn.titleLabel?.font = UIFont(name: "Baloo", size: 18)
        resetBtn.setTitle("I want to reincarnate!", for: .normal)
        resetBtn.alpha = 0
        
        setOption()
        setSound()
        
        if questionUsed.options[0].nextQuestion == -1 || questionUsed.options[1].nextQuestion == -1 {
            print("HAPPY END!")
            
            resetBtn.alpha = 1
        } else if questionUsed.options[0].nextQuestion == -2 || questionUsed.options[1].nextQuestion == -2 {
            print("BAD END!")
            view.backgroundColor = .black
            labelQuestion.textColor = .white
            resetBtn.setTitleColor(.white, for: .normal)
            resetBtn.alpha = 1
        }
    }
    
    func setOption() {
        lblOption.font = UIFont(name: "Baloo", size: 20)
        lblOption.alpha = 0
    }
    
    @IBAction func panCard(_ sender: UIPanGestureRecognizer) {
        let card = sender.view!
        let point = sender.translation(in: view)
        let xFromCenter = card.center.x - view.center.x
        
        card.center = CGPoint(x: view.center.x + point.x, y: 526.5 + point.y)
        card.transform = CGAffineTransform(rotationAngle: xFromCenter / divisor)
        
        if xFromCenter < 0 {
            lblOption.text = questionUsed.options[0].optionLabel
        } else {
            lblOption.text = questionUsed.options[1].optionLabel
        }
        
        lblOption.alpha = (abs(xFromCenter) / view.center.x) + 0.3

        if sender.state == UIGestureRecognizer.State.ended {
            
            if card.center.x < 30 {
//                Geser kiri
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x - 200, y: 526.5 + 75)
                    card.alpha = 0
                })
                if questionUsed.options[0].nextQuestion >= 0 || questionUsed.options[1].nextQuestion >= 0{
                    loadQuestion(idx: questionUsed.options[0].nextQuestion)
                    setContent()
                }

                sound.play()
//                return

            } else if card.center.x > (view.frame.width - 30) {
//                Geser kanan
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x + 200, y: 526.5 + 75)
                    card.alpha = 0
                })
                
                if questionUsed.options[0].nextQuestion >= 0 || questionUsed.options[1].nextQuestion >= 0{
                    loadQuestion(idx: questionUsed.options[1].nextQuestion)
                    setContent()
                }

                sound.play()
//                return
            }
            resetCard()
        }
    }
    
    func resetCard() {
        UIView.animate(withDuration: 0.2, animations: {
            self.cardView.center = CGPoint(x: self.view.center.x, y: 526.5)
            self.lblOption.alpha = 0
            self.cardView.alpha = 1
            self.cardView.transform = .identity
        })
    }
    
    func setSound() {
        let url = Bundle.main.url(forResource: "swipeSound", withExtension: "wav")
        sound = try! AVAudioPlayer(contentsOf: url!)
        sound.prepareToPlay()
    }
    
    @IBAction func resetBtnTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
