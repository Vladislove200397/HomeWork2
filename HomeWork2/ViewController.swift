//
//  ViewController.swift
//  HomeWork2
//
//  Created by Vlad Kulakovsky  on 13.03.22.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var valueTextRed: UILabel!
    @IBOutlet var valueTextGreen: UILabel!
    @IBOutlet var valueTextBlue: UILabel!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    @IBOutlet var switcherRed: UISwitch!
    @IBOutlet var switcherBlue: UISwitch!
    @IBOutlet var switcherGreen: UISwitch!
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: Start load parameters for mainView
        mainView.backgroundColor = UIColor.black
        mainView.layer.borderWidth = 2
        mainView.layer.cornerRadius = 50
        // mainView.layer .cornerRadius = mainView.frame.width / 2
        // MARK: Start load parameters for valueTextRed, Green, Blue
        valueTextRed.textColor = .white

        valueTextBlue.textColor = .white

        valueTextGreen.textColor = .white
        
        valueTextRed.text = String(Int(sliderRed.value))
        
        valueTextBlue.text = String(Int(sliderBlue.value))
        
        valueTextBlue.text = String(Int(sliderBlue.value))
        }

//    override func viewWillLayoutSubviews() {
//        mainView.layer .cornerRadius = mainView.frame.width / 0.5
//    }

    
    
    @IBAction func RedSliderTextAction(_ sender: Any) {
        valueTextRed.text = String(Int(sliderRed.value))
        valueTextGreen.text = String(Int(sliderGreen.value))
        valueTextBlue.text = String(Int(sliderBlue.value))
    }
    
  // Change view color logic
    @IBAction func RedSliderChangeViewColor(_ sender: Any) {
        updateSliders()
}

  // Switchers hide sliders by color
    @IBAction func HideRedSlider(_ sender: Any) {
       updateColor()
    }
    
    func updateSliders() {
    updateColor()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if switcherRed.isOn {
            red = CGFloat(sliderRed.value)
        }
        if switcherGreen.isOn {
            green = CGFloat(sliderGreen.value)
        }
        if switcherBlue.isOn {
            blue = CGFloat(sliderBlue.value)
        }
        let color = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
        mainView.backgroundColor = color
      
  }
}


