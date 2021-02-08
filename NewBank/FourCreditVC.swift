//
//  FourCreditVC.swift
//  NewBank
//
//  Created by MacBook on 2/8/21.
//

import UIKit

class FourCreditVC: UIViewController {

    var creditInFourVC: String?
    
    
    var nameInLabelCre: String?
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabelInFourCreVC.text = "Hello, \(nameInLabelCre!)"
        bankValueInFourCreVC.text = "\(creditInFourVC)"
    }
    

    @IBOutlet weak var nameLabelInFourCreVC: UILabel!
    
    
    

    @IBOutlet weak var bankValueInFourCreVC: UILabel!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
