//
//  ViewController.swift
//  StrategyPatterniOS
//
//  Created by Avadesh Kumar on 10/08/16.
//  Copyright © 2016 Avadesh Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let insurancePolicy = InsurancePolicy()
        insurancePolicy.policyType = PolicyJeevanAnand()
        let premiumOne = insurancePolicy.calculatePremiumForAmount(10000)
        print("JeevanAnand Policy premium is:\(premiumOne)")
        
        insurancePolicy.policyType = PolicySimplySave()
        let premiumTwo = insurancePolicy.calculatePremiumForAmount(10000)
        print("Simply save Policy premium is:\(premiumTwo)")
        
        insurancePolicy.policyType = PolicyXyz()
        let premiumThree = insurancePolicy.calculatePremiumForAmount(10000)
        print("Policy xyz premium is:\(premiumThree)")
        
    }
}

