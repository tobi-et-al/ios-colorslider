//
//  ViewController.swift
//  colorwheel
//
//  Created by Tobi Ogunleye on 14/10/2017.
//  Copyright © 2017 bigthinking. All rights reserved.
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

    @IBOutlet weak var greyscale: UISlider!
    @IBOutlet weak var redscale: UISlider!
    @IBOutlet weak var greenscale: UISlider!
    @IBOutlet weak var bluescale: UISlider!
    
    @IBAction func greyScaleAction(_ sender: UISlider) {
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
    }
    @IBAction func rgbScaleAction(_ sender: Any) {
        let red = redscale.value;
        let green = greenscale.value;
        let blue = bluescale.value;
        view.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }

}

