//
//  ViewController.swift
//  Conversores-ioS
//
//  Created by Rennan Bruno on 01/01/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfValue: UITextView!
    @IBOutlet weak var btUnit1: UIButton!
    @IBOutlet weak var btUnit2: UIButton!
    @IBOutlet weak var lbUnit: UILabel!
    @IBOutlet weak var lbResult: UITextView!
    @IBOutlet weak var lbResultUnit: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showNext(_ sender: UIButton) {
        switch lbUnit.text! {
        case "Temperatura":
            lbUnit.text = "Peso"
            btUnit1.setTitle("Kilograma", for: .normal)
            btUnit2.setTitle("Libra", for: .normal)
        case "Peso":
            lbUnit.text = "Moeda"
            btUnit1.setTitle("Real", for: .normal)
            btUnit2.setTitle("Dollar", for: .normal)
        case "Moeda":
            lbUnit.text = "Distancia"
            btUnit1.setTitle("Metro", for: .normal)
            btUnit2.setTitle("Milhas", for: .normal)
        default:
            lbUnit.text = "Temperatura"
            btUnit1.setTitle("Kilograma", for: .normal)
            btUnit2.setTitle("Libra", for: .normal)
        }
        
        convert(nil)
        
    }
    
    @IBAction func convert(_ sender: UIButton?) {
        
        if let sender = sender {
            if sender == btUnit1{
                btUnit2.alpha = 0.5
            }else{
                btUnit1.alpha = 0.5
            }
            sender.alpha = 1.0
        }
        
        switch lbUnit.text! {
        case "Temperatura":
            calcTemperature()
        case "Peso":
            calcWeight()
        case "Moeda":
            calcCurrency()
        default:
            calcDistance()
            
        }
        
        func calcTemperature() {
            guard let temperature = Double(tfValue.text! ) else  {return}
        }
        
        func calcWeight() {
            
        }
        
        func calcCurrency() {
            
        }
        
        func calcDistance() {
            
        }
    
    }
    
    
}
