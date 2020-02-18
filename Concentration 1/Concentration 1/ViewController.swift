//
//  ViewController.swift
//  Concentration 1
//
//  Created by 麥文傑 on 2020/2/18.
//  Copyright © 2020 麥文傑. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var the_Counter = 0 {
        didSet{
            countLabel.text = "Filps: \(the_Counter)"
        }
    }
    func Filpcards(withEmoji emoji: String, on Button: UIButton) {
        if Button.currentTitle == emoji {
            Button.setTitle(" ", for: UIControl.State.normal)
            Button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }else{
            Button.setTitle(emoji, for: UIControl.State.normal)
            Button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    @IBOutlet var cardsButton: [UIButton]!
    
    @IBOutlet weak var countLabel: UILabel!
    
    var emojiChoice = ["👻","🎃","👻","🎃"]
    
    @IBAction func touchcards(_ sender : UIButton){
        the_Counter+=1
        if let Buttonindex = cardsButton.firstIndex(of: sender){
            Filpcards(withEmoji: emojiChoice[Buttonindex], on: sender)}
        else{
            print("the button is not in list")
        }}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

