//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by SEAN CHOI on 1/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var School: UITextField!
    
    @IBOutlet weak var AcademicYear: UISegmentedControl!
    
    @IBOutlet weak var numPets: UILabel!
    @IBOutlet weak var numPetsStepper: UIStepper!
    
    @IBOutlet weak var morePets: UISwitch!
    
    @IBOutlet weak var IntroduceSelf: UIButton!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numPets.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelf(_ sender: UIButton) {
        let academicYear = AcademicYear.titleForSegment(at: AcademicYear.selectedSegmentIndex)
        
        let introduction = "My first name is \(FirstName.text!) \(LastName.text!) and I attend \(School.text!). I am currently in my \(academicYear!) academic year. I own \(numPets.text!) pet(s). It is \(morePets.isOn) I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

