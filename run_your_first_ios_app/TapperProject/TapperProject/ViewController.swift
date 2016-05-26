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
        let int = Int(textfield_number.text!)!
        if int > 0 {
            print("Let's do \(int) taps")
        }
    }
    @IBAction func clickCoinButton(sender: AnyObject) {
        print("Tap!")
        taps_done += 1
        let result = String(taps_done)
        label_taps.text = (result)
    }
}

