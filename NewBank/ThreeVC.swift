//
//  ThreeVC.swift
//  NewBank
//
//  Created by MacBook on 2/8/21.
//

import UIKit

class ThreeVC: UIViewController {

    
    var bankValueForSegue: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var textFieldInThreeVC: UITextField!
    
   
    @IBAction func loginBTNinThreeVC(_ sender: UIButton) {
        if bankValueForSegue! >= 0 {
            performSegue(withIdentifier: "secondDepositSegue", sender: nil)
        } else {
            performSegue(withIdentifier: "secondCreditSegue", sender: nil)
        
        
        
        
    }
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nameTFDep = segue.destination as? FourDepositVC {
            nameTFDep.nameInLabelDep = textFieldInThreeVC.text
        } else if let nameTFCre = segue.destination as? FourCreditVC {
            nameTFCre.nameInLabelCre = textFieldInThreeVC.text
        }
    }
    
    
    
    
    
    
    
    
    
    
}
