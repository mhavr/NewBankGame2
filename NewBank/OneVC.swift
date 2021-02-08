//
//  OneVC.swift
//  NewBank
//
//  Created by MacBook on 2/8/21.
//

import UIKit

class OneVC: UIViewController {
    
    
    var bankValue = 0
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    @IBAction func profileBTNinOneVC(_ sender: UIButton) {
        performSegue(withIdentifier: "profileSegue", sender: nil)
        
    }
    
    
    
    
    
    
    
    
    
    

    @IBOutlet weak var bankValueInOneVC: UILabel!
    
    
    
    
    
    
    
    @IBOutlet weak var currentValueInOneVC: UILabel!
        
    
  
    @IBOutlet weak var sliderOutInOneVC: UISlider! {
        didSet {
            sliderOutInOneVC.value = 500
            sliderOutInOneVC.minimumValue = 1
            sliderOutInOneVC.maximumValue = 10000
        }
    }
    
    
    
    
    
    
    
    
    
    @IBAction func sliderActInOneVC(_ sender: UISlider) {
        let currentVal = Int(round(sliderOutInOneVC.value))
        currentValueInOneVC.text = "\(currentVal)$"
    }
    
    
    
    @IBAction func depositBTNinOneVC(_ sender: UIButton) {
        bankValue += Int(sliderOutInOneVC.value)
        bankValueInOneVC.text = "\(bankValue)$"
    }
    
    

    
    
    @IBAction func creditBTNinOneVC(_ sender: UIButton) {
        bankValue -= Int(sliderOutInOneVC.value)
        bankValueInOneVC.text = "\(bankValue)$"
    }
    
    
    
    

        
    
    
    
    @IBAction func viewBTNinOneVC(_ sender: UIButton) {
        if bankValue >= 0 {
            performSegue(withIdentifier: "depositSegue", sender: nil)
        } else {
            performSegue(withIdentifier: "creditSegue", sender: nil)
        }
    
    }
    
    
    @IBAction func resetBTNinOneVC(_ sender: UIButton) {
        bankValue = 0
        bankValueInOneVC.text = "\(bankValue)$"
    }
    
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let deposVC = segue.destination as? TwoDepositVC {
        deposVC.deposit = bankValueInOneVC.text
        } else if let creditVC = segue.destination as? TwoCreditVC {
        creditVC.credit = bankValueInOneVC.text
        } else if let depositInFourVC = segue.destination as? FourDepositVC {
        depositInFourVC.depositInFourVC = bankValueInOneVC.text
        } else if let creditInFourVC = segue.destination as? FourCreditVC {
        creditInFourVC.creditInFourVC = bankValueInOneVC.text
        } else if let bankValueForThreeVC = segue.destination as? ThreeVC {
            bankValueForThreeVC.bankValueForSegue = bankValue
    
    
    
    
        }
    }

}
