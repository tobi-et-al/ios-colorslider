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
        greyScaleAction(greyscale)
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
    
    @IBOutlet weak var greyValue: UILabel!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBAction func reset(_ sender: Any) {
        reset();
    }
    
    @IBAction func reset(){
        
        greyscale.value  = 0.5;
        redscale.value   = 0.5;
        greenscale.value = 0.5;
        bluescale.value  = 0.5;
        
        greyValue.text = "0.5";
        redValue.text = "0.5";
        greenValue.text = "0.5";
        blueValue.text = "0.5";
    }

    
    @IBAction func greyScaleAction(_ sender: UISlider) {
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
        greyValue.text = String(format:"%.2f",  sender.value)
        if (sender.value >= 0.5){
            greyValue.textColor = UIColor(white: 0, alpha: 1)

        }
        else{
            greyValue.textColor = UIColor(white: 1, alpha: 1)
                    }
    }
    @IBAction func rgbScaleAction(_ sender: Any) {
        let red = redscale.value;
        let green = greenscale.value;
        let blue = bluescale.value;
        
        view.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1);
        
        redValue.text = String(format:"%.2f",  red)
        greenValue.text = String(format:"%.2f", green)
        blueValue.text = String(format:"%.2f",  blue)

    }

}

