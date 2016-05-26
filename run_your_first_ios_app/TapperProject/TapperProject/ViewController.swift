//
//  ViewController.swift
//  TapperProject
//
//  Copyright © 2016 Holberton School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Properties
    @IBOutlet weak var textfield_number: UITextField!
    @IBOutlet weak var button_play: UIImageView!
    @IBOutlet weak var image_tapper: UIButton!
    @IBOutlet weak var label_taps: UILabel!
    @IBOutlet weak var button_coin: UIButton!
    var taps_done: Int = 0
    var taps_requested: Int = 0

    // MARK: Actions
    @IBAction func clickPlayButton(sender: AnyObject) {
        let taps_requested = Int(textfield_number.text!)!

        if taps_requested > 0 {
            print("Let's do \(taps_requested) taps")
            initGame()
        }
    }
    @IBAction func clickCoinButton(sender: AnyObject) {
        if taps_done < taps_requested {
            
        }
        if taps_done >= taps_requested {
            resetGame()
        }
        print("Tap!")
        taps_done += 1
        let result = String(taps_done)
        label_taps.text = (result)
    }
    func initGame() {
        image_tapper.hidden = true
        button_play.hidden = true
        label_taps.hidden = false
        button_coin.hidden = false
        textfield_number.hidden = true
        taps_done = 0
        label_taps.text = "0 Taps"
    }
    func resetGame() {
        label_taps.hidden = true
        button_coin.hidden = true
        image_tapper.hidden = false
        button_play.hidden = false
        textfield_number.hidden = false
        taps_requested = 0
        
    }
}

