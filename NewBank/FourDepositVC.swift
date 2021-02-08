//
//  FourDepositVC.swift
//  NewBank
//
//  Created by MacBook on 2/8/21.
//

import UIKit

class FourDepositVC: UIViewController {

    var depositInFourVC: String?
    
    var nameInLabelDep: String?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameLabelInFourDepVC.text = "Hello, \(nameInLabelDep!)"
       
        bankValueInFourDepVC.text = depositInFourVC
    }
    

    
    @IBOutlet weak var bankValueInFourDepVC: UILabel!
    
    
    
    
    @IBOutlet weak var nameLabelInFourDepVC: UILabel!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
