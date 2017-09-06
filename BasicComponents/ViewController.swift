//
//  ViewController.swift
//  BasicComponents
//
//  Created by 6272 on 9/6/2560 BE.
//  Copyright © 2560 6272. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var switchControl: UISwitch!
    @IBOutlet weak var button: UIButton!
    @IBAction func segmentMethod(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            button.isHidden = false
            switchControl.isHidden=true
        }
        else {
            button.isHidden = true
            switchControl.isHidden = false
        }
    }
    
    @IBAction func switchMethod(_ sender: Any) {
        if switchControl.isOn {
            label.text = "Switch is ON"
        }
        else {
            label.text = "Switch is OFF"
        }
    }
    
    @IBAction func buttonMethod(_ sender: Any) {
        label.text = "You clicked the button"
    }
    @IBAction func datePickerMethod(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.medium
        label.text = dateFormatter.string(from: datePicker.date)
    }
    
    
    
    
    
    @IBAction func slideMethod(_ sender: Any) {
        label.text = String(format: "%1.2f%%",slider.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button.isHidden = false
        switchControl.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

