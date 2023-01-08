//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by HOANG THUY NGA on 1/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
          numberOfPetsLabel.text = "\(Int(sender.value))"
      }
   
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            
            
            let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
            
           
            let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I am attending \(schoolNameTextField.text!).I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.It is \(morePetsSwitch.isOn) that I want more pets."
            
            
           
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            
            let action = UIAlertAction(title: "It's great to meet you!", style: .default, handler: nil)
            
            
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
        }
    
}

