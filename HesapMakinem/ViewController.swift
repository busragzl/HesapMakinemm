//
//  ViewController.swift
//  HesapMakinem
//
//  Created by Musa on 15.12.2024.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var num1 : Float!
    var num2 : Float!
    var result : Float!
    
    override func viewDidLoad() {
        
       
        super.viewDidLoad()
        
    }
    
    func worker(process : String){
        
        if  textField1.text != ""  && textField2.text != "" {
            
            if process == "+" {
                num1 = Float(textField1.text!) ?? 0
                num2 = Float(textField2.text!) ?? 0
                result  = num1 + num2
            }
            
            if process == "-" {
                num1 = Float(textField1.text!) ?? 0
                num2 = Float(textField2.text!) ?? 0
                result  = num1 - num2
            }
            if process == "*" {
                num1 = Float(textField1.text!) ?? 0
                num2 = Float(textField2.text!) ?? 0
                result  = num1 * num2
            
            }
            if process == "/" {
                
                num1 = Float(textField1.text!) ?? 1
                num2 = Float(textField2.text!) ?? 0
                result  = num1 / num2
            }
            
            resultLabel.text = String(result)
         
           
        }else{
            
            resultLabel.text = " Lütfen Yukarıdaki alanları doldurunuz "
        }
    }
    
 

    @IBAction func collectButton(_ sender: Any) {
       
        worker(process: "+")
       
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
        worker(process: "-")
    }
    
    @IBAction func divisionButton(_ sender: Any) {
        worker(process: "/")
    }
    
    
    @IBAction func multipButton(_ sender: Any) {
        worker(process: "*")
    }
    
}

