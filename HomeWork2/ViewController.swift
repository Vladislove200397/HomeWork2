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
    var sliderRedValue: Float = 0.0
    var sliderGreenValue: Float = 0.0
    var sliderBlueValue: Float = 0.0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: Start load parameters for mainView
        mainView.backgroundColor = UIColor.black
        mainView.layer.cornerRadius = 10
        // MARK: Start load parameters for valueTextRed, Green, Blue
        valueTextRed.text = "0"
        valueTextRed.textColor = .white
        valueTextBlue.text = "0"
        valueTextBlue.textColor = .white
        valueTextGreen.text = "0"
        valueTextGreen.textColor = .white
        // MARK: Start load parameters for red slider
        sliderRed.value = 0
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 255
        sliderRed.tintColor = UIColor.red
        valueTextRed.text = String(Int(sliderRed.value))
        // MARK: Start load parameters for green slider
        sliderGreen.value = 0
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 255
        sliderGreen.tintColor = UIColor.green
        valueTextBlue.text = String(Int(sliderBlue.value))
        // MARK: Start load parameters for blue slider
        sliderBlue.value = 0
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 255
        sliderBlue.tintColor = UIColor.blue
        valueTextBlue.text = String(Int(sliderBlue.value))
        // MARK: Start load parameters for switchers
        }
    
    
    @IBAction func RedSliderTextAction(_ sender: Any) {
        valueTextRed.text = String(Int(sliderRed.value))
    }
    
    @IBAction func GreenSliderTextAction(_ sender: Any) {
        valueTextGreen.text = String(Int(sliderGreen.value))
    }
    
    @IBAction func BlueSliderTextAction(_ sender: Any) {
        valueTextBlue.text = String(Int(sliderBlue.value))
    }
    
  // Change view color logic
    @IBAction func RedSliderChangeViewColor(_ sender: Any) {
        
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
}
    
    
    @IBAction func GreenSliderChangeViewColor(_ sender: Any) {

        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
    }
   
    @IBAction func BlueSliderChangeViewColor(_ sender: Any) {

        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
    }

  // Switchers hide sliders by color
    @IBAction func HideRedSlider(_ sender: Any) {
        sliderRed.isHidden = !switcherRed.isOn
        valueTextRed.isHidden = !switcherRed.isOn
        if !switcherRed.isOn {
    
            mainView.backgroundColor = UIColor(red: 0/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
        } else if switcherRed.isOn {
            valueTextRed.text = String(Int(sliderRed.value))
            mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
        }
    }
    
    
    @IBAction func HideGreenSlider(_ sender: Any) {
        sliderGreen.isHidden = !switcherGreen.isOn
        valueTextGreen.isHidden = !switcherGreen.isOn
        if !switcherGreen.isOn {

            mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: 0/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
        } else if switcherGreen.isOn {
            valueTextGreen.text = String(Int(sliderGreen.value))
            mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
        }
    }
    
    
    @IBAction func HideBlueSlider(_ sender: Any) {
        sliderBlue.isHidden = !switcherBlue.isOn
        valueTextBlue.isHidden = !switcherBlue.isOn
         if !switcherBlue.isOn {
             mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: 0/255, alpha: 1)
         } else if switcherBlue.isOn {
            valueTextBlue.text = String(Int(sliderBlue.value))
            mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
        }
    }
    

}



